/////////////////////////////////////////////////////////////////////////////
//    WinMerge:  an interactive diff/merge utility
//    Copyright (C) 1997-2000  Thingamahoochie Software
//    Author: Dean Grimm
//
//    This program is free software; you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation; either version 2 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program; if not, write to the Free Software
//    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
//
/////////////////////////////////////////////////////////////////////////////
/**
 *  @file DiffContext.cpp
 *
 *  @brief Implementation of CDiffContext
 */ 
// RCS ID line follows -- this is updated by CVS
// $Id$
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "merge.h"
#include "version.h"
#include "DiffContext.h"
#include "paths.h"
#include "coretools.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CDiffContext::CDiffContext(LPCTSTR pszLeft /*=NULL*/, LPCTSTR pszRight /*=NULL*/)
{
	m_bRecurse=FALSE;
	m_strLeft = pszLeft;
	m_strRight = pszRight;
	m_pList = &m_dirlist;

	pNamesLeft = NULL;
	pNamesRight = NULL;
	m_piFilter = 0;
	m_msgUpdateStatus = 0;
	m_hMainFrame = NULL;
}

CDiffContext::CDiffContext(LPCTSTR pszLeft, LPCTSTR pszRight, CDiffContext& src)
{
	// This is used somehow in recursive comparisons
	// I think that it is only used during rescan to copy into temporaries
	// which modify the original (because pointers are copied below)
	// and then the temporary goes away
	// so the temporary never exists while the user is interacting with the GUI

	m_bRecurse=src.m_bRecurse;
	m_strLeft = pszLeft;
	m_strRight = pszRight;
	m_pList = src.m_pList;
	SetRegExp(src.m_strRegExp);
	m_piFilter = src.m_piFilter;
	m_msgUpdateStatus = src.m_msgUpdateStatus;
	m_hMainFrame = src.m_hMainFrame;

	pNamesLeft = NULL;
	pNamesRight = NULL;
}

CDiffContext::~CDiffContext()
{
	if (pNamesLeft != NULL)
		free(pNamesLeft);
	if (pNamesRight != NULL)
		free(pNamesRight);
}

/**
 * @brief Fetch & return the fixed file version as a dotted string
 */
static CString GetFixedFileVersion(const CString & path)
{
	CVersionInfo ver(path);
	return ver.GetFixedFileVersion();
}

/**
 * @brief Add new diffitem to CDiffContext array
 */
void CDiffContext::AddDiff(LPCTSTR pszFilename, LPCTSTR szSubdir
	, LPCTSTR pszLeftDir, LPCTSTR pszRightDir
	, long lmtime, long rmtime
	, long lctime, long rctime
	, __int64 lsize, __int64 rsize
	, BYTE code
	)
{
	DIFFITEM di;
	di.sfilename = pszFilename;
	di.left.spath = pszLeftDir;
	di.right.spath = pszRightDir;
	di.left.mtime = lmtime;
	di.right.mtime = rmtime;
	di.left.ctime = lctime;
	di.right.ctime = rctime;
	di.code = code;
	di.left.size = lsize;
	di.right.size = rsize;
	UpdateFieldsNeededForNewItems(di, di.left);
	UpdateFieldsNeededForNewItems(di, di.right);
	AddDiff(di);
}

void CDiffContext::AddDiff(DIFFITEM di)
{
	// BSP - Capture the extension; from the end of the file name to the last '.'     
	TCHAR *pDest = _tcsrchr(di.sfilename, _T('.') );

	if(pDest)	// handle no extensions case.
	{
		di.sext = pDest+1; // skip dot
		di.sext.MakeLower();
	}

	m_pList->AddTail(di);
	SendMessage(m_hMainFrame, m_msgUpdateStatus, di.code, NULL);
}

void CDiffContext::RemoveDiff(POSITION diffpos)
{
	m_pList->RemoveAt(diffpos);
}

void CDiffContext::SetRegExp(LPCTSTR pszExp)
{
	m_strRegExp = pszExp;
	m_rgx.RegComp( pszExp );
}

void CDiffContext::RemoveAll()
{
	m_pList->RemoveAll();
}

POSITION CDiffContext::GetFirstDiffPosition()
{
	return m_pList->GetHeadPosition();
}

DIFFITEM CDiffContext::GetNextDiffPosition(POSITION & diffpos)
{
	return m_pList->GetNext(diffpos);
}

DIFFITEM CDiffContext::GetDiffAt(POSITION diffpos)
{
	return m_pList->GetAt(diffpos);
}

const DIFFITEM CDiffContext::GetDiffAt(POSITION diffpos) const
{
	return m_pList->GetAt(diffpos);
}

BYTE CDiffContext::GetDiffStatus(POSITION diffpos)
{
	return m_pList->GetAt(diffpos).code;
}

int CDiffContext::GetDiffCount()
{
	return m_pList->GetCount();
}

void CDiffContext::UpdateStatusCode(POSITION diffpos, BYTE status)
{
	DIFFITEM & di = m_pList->GetAt(diffpos);
	di.code = status;
}

/**
 * @brief Load all fields not provided in initial AddDiff call
 */
void CDiffContext::UpdateFieldsNeededForNewItems(DIFFITEM & di, DiffFileInfo & dfi)
{
	// attributes weren't passed, which means reading the file status
	// so we may as well do them all
	UpdateInfoFromDiskHalf(di, dfi);
}

/**
 * @brief Update information from disk
 */
void CDiffContext::UpdateInfoFromDisk(DIFFITEM & di)
{
	UpdateInfoFromDiskHalf(di, di.left);
	UpdateInfoFromDiskHalf(di, di.right);
}

/**
 * @brief Convert a FILETIME to a long (standard time)
 */
static long FileTimeToLong(FILETIME & ft)
{
	return CTime(ft).GetTime();
}

/**
 * @brief Update information from disk (for one side)
 */
void CDiffContext::UpdateInfoFromDiskHalf(DIFFITEM & di, DiffFileInfo & dfi)
{
	UpdateVersion(di, dfi);

	CString filepath = paths_ConcatPath(dfi.spath, di.sfilename);

	// CFileFind doesn't expose the attributes
	// CFileStatus doesn't expose 64 bit size

	WIN32_FIND_DATA wfd;
	HANDLE h = FindFirstFile(filepath, &wfd);
	if (h != INVALID_HANDLE_VALUE)
	{
		dfi.mtime = FileTimeToLong(wfd.ftLastWriteTime);
		dfi.flags.reset();
		if (wfd.dwFileAttributes & FILE_ATTRIBUTE_READONLY)
			dfi.flags.flags += FileFlags::RO;
		dfi.size = (wfd.nFileSizeHigh << 32) + wfd.nFileSizeLow;
		FindClose(h);
	}
	else
	{
		dfi.mtime = 0;
		dfi.size = 0;
		dfi.flags.reset();
	}
}

/**
 * @brief Load file versions from disk
 */
void CDiffContext::UpdateVersion(DIFFITEM & di, DiffFileInfo & dfi)
{
	// Would be better to not check any text files
	// but binary files are flagged as FILE_SAME not FILE_BINSAME 
	// when this is called (Perry 2003-08-21)
	// and we also didn't flag binary for uniques
	if (1)
	{
		CString filepath = paths_ConcatPath(dfi.spath, di.sfilename);
		dfi.version = GetFixedFileVersion(filepath);
	}
}

CString DIFFITEM::getLeftFilepath() const
{
	return paths_ConcatPath(left.spath, sfilename);
}

CString DIFFITEM::getRightFilepath() const
{
	return paths_ConcatPath(right.spath, sfilename);
}

