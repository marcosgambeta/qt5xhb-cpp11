/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERACTIONEDITORINTERFACE
REQUEST QDESIGNERFORMWINDOWMANAGERINTERFACE
REQUEST QDESIGNEROBJECTINSPECTORINTERFACE
REQUEST QDESIGNERPROPERTYEDITORINTERFACE
REQUEST QDESIGNERWIDGETBOXINTERFACE
REQUEST QEXTENSIONMANAGER
REQUEST QWIDGET
#endif

CLASS QDesignerFormEditorInterface INHERIT QObject

   METHOD new
   METHOD delete
   METHOD actionEditor
   METHOD extensionManager
   METHOD formWindowManager
   METHOD objectInspector
   METHOD propertyEditor
   METHOD setActionEditor
   METHOD setObjectInspector
   METHOD setPropertyEditor
   METHOD setWidgetBox
   METHOD topLevel
   METHOD widgetBox

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerFormEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDesigner/QDesignerFormEditorInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtDesigner/QDesignerFormEditorInterface>
#endif

#include <QtDesigner/QExtensionManager>
#include <QtDesigner/QDesignerFormWindowManagerInterface>
#include <QtDesigner/QDesignerActionEditorInterface>
#include <QtDesigner/QDesignerObjectInspectorInterface>
#include <QtDesigner/QDesignerPropertyEditorInterface>
#include <QtDesigner/QDesignerWidgetBoxInterface>

/*
QDesignerFormEditorInterface ( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QDesignerFormEditorInterface ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_DELETE )
{
  auto obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events (obj, true);
    Signals4_disconnect_all_signals (obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDesignerActionEditorInterface * actionEditor () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_ACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerActionEditorInterface * ptr = obj->actionEditor ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QDESIGNERACTIONEDITORINTERFACE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QExtensionManager * extensionManager () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_EXTENSIONMANAGER )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QExtensionManager * ptr = obj->extensionManager ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QEXTENSIONMANAGER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDesignerFormWindowManagerInterface * formWindowManager () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_FORMWINDOWMANAGER )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerFormWindowManagerInterface * ptr = obj->formWindowManager ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDesignerObjectInspectorInterface * objectInspector () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_OBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerObjectInspectorInterface * ptr = obj->objectInspector ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QDESIGNEROBJECTINSPECTORINTERFACE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDesignerPropertyEditorInterface * propertyEditor () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_PROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerPropertyEditorInterface * ptr = obj->propertyEditor ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QDESIGNERPROPERTYEDITORINTERFACE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setActionEditor ( QDesignerActionEditorInterface * actionEditor )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERACTIONEDITORINTERFACE(1) )
    {
#endif
      obj->setActionEditor ( PQDESIGNERACTIONEDITORINTERFACE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setObjectInspector ( QDesignerObjectInspectorInterface * objectInspector )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETOBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNEROBJECTINSPECTORINTERFACE(1) )
    {
#endif
      obj->setObjectInspector ( PQDESIGNEROBJECTINSPECTORINTERFACE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPropertyEditor ( QDesignerPropertyEditorInterface * propertyEditor )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETPROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERPROPERTYEDITORINTERFACE(1) )
    {
#endif
      obj->setPropertyEditor ( PQDESIGNERPROPERTYEDITORINTERFACE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidgetBox ( QDesignerWidgetBoxInterface * widgetBox )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETWIDGETBOX )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERWIDGETBOXINTERFACE(1) )
    {
#endif
      obj->setWidgetBox ( PQDESIGNERWIDGETBOXINTERFACE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * topLevel () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_TOPLEVEL )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->topLevel ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDesignerWidgetBoxInterface * widgetBox () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_WIDGETBOX )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerWidgetBoxInterface * ptr = obj->widgetBox ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QDESIGNERWIDGETBOXINTERFACE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
