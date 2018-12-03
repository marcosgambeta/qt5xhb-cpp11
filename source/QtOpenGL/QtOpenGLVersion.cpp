/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include <Qt>

#ifndef __XHARBOUR__
#include <QtOpenGLVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtOpenGLVersion>
#endif

HB_FUNC( QTOPENGL_VERSION_STR )
{
  hb_retc( (const char *) QTOPENGL_VERSION_STR );
}

HB_FUNC( QTOPENGL_VERSION )
{
  hb_retni( QTOPENGL_VERSION );
}
