/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QFONT
#endif

CLASS QCustom3DLabel INHERIT QCustom3DItem

   METHOD new
   METHOD delete
   METHOD text
   METHOD setText
   METHOD font
   METHOD setFont
   METHOD textColor
   METHOD setTextColor
   METHOD backgroundColor
   METHOD setBackgroundColor
   METHOD isBorderEnabled
   METHOD setBorderEnabled
   METHOD isBackgroundEnabled
   METHOD setBackgroundEnabled
   METHOD isFacingCamera
   METHOD setFacingCamera

   METHOD onBackgroundColorChanged
   METHOD onBackgroundEnabledChanged
   METHOD onBorderEnabledChanged
   METHOD onFacingCameraChanged
   METHOD onFontChanged
   METHOD onTextChanged
   METHOD onTextColorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCustom3DLabel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCustom3DLabel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QCustom3DLabel>
#endif

using namespace QtDataVisualization;

/*
explicit QCustom3DLabel(QObject *parent = Q_NULLPTR)
*/
void QCustom3DLabel_new1 ()
{
  QCustom3DLabel * o = new QCustom3DLabel ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QCustom3DLabel(const QString &text, const QFont &font, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, QObject *parent = Q_NULLPTR)
*/
void QCustom3DLabel_new2 ()
{
  QCustom3DLabel * o = new QCustom3DLabel ( PQSTRING(1), *PQFONT(2), *PQVECTOR3D(3), *PQVECTOR3D(4), *PQQUATERNION(5), OPQOBJECT(6,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QCustom3DLabel(QObject *parent = Q_NULLPTR)
//[2]explicit QCustom3DLabel(const QString &text, const QFont &font, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QCUSTOM3DLABEL_NEW  )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCustom3DLabel_new1();
  }
  else if( ISBETWEEN(5,6) && ISCHAR(1) && ISQFONT(2) && ISQVECTOR3D(3) && ISQVECTOR3D(4) && ISQQUATERNION(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QCustom3DLabel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QCustom3DLabel()
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_DELETE )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_TEXT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->text () );
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
void setText(const QString &text)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETTEXT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setText ( PQSTRING(1) );
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
QFont font() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_FONT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->font () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
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
void setFont(const QFont &font)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETFONT )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setFont ( *PQFONT(1) );
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
QColor textColor() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_TEXTCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->textColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setTextColor(const QColor &color)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETTEXTCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setTextColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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
QColor backgroundColor() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_BACKGROUNDCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->backgroundColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setBackgroundColor(const QColor &color)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBACKGROUNDCOLOR )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setBackgroundColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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
bool isBorderEnabled() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISBORDERENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBorderEnabled () );
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
void setBorderEnabled(bool enabled)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBORDERENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setBorderEnabled ( PBOOL(1) );
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
bool isBackgroundEnabled() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISBACKGROUNDENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBackgroundEnabled () );
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
void setBackgroundEnabled(bool enabled)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETBACKGROUNDENABLED )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setBackgroundEnabled ( PBOOL(1) );
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
bool isFacingCamera() const
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ISFACINGCAMERA )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFacingCamera () );
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
void setFacingCamera(bool enabled)
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_SETFACINGCAMERA )
{
  QCustom3DLabel * obj = (QCustom3DLabel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setFacingCamera ( PBOOL(1) );
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

using namespace QtDataVisualization;

/*
void backgroundColorChanged( const QColor & color )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ONBACKGROUNDCOLORCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "backgroundColorChanged(QColor)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCustom3DLabel::backgroundColorChanged, 
                                                              [sender]
                                                              (const QColor & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "backgroundColorChanged(QColor)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCUSTOM3DLABEL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QCOLOR" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "backgroundColorChanged(QColor)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "backgroundColorChanged(QColor)" );

      QObject::disconnect( Signals2_get_connection( sender, "backgroundColorChanged(QColor)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void backgroundEnabledChanged( bool enabled )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ONBACKGROUNDENABLEDCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "backgroundEnabledChanged(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCustom3DLabel::backgroundEnabledChanged, 
                                                              [sender]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "backgroundEnabledChanged(bool)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCUSTOM3DLABEL" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "backgroundEnabledChanged(bool)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "backgroundEnabledChanged(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "backgroundEnabledChanged(bool)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void borderEnabledChanged( bool enabled )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ONBORDERENABLEDCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "borderEnabledChanged(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCustom3DLabel::borderEnabledChanged, 
                                                              [sender]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "borderEnabledChanged(bool)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCUSTOM3DLABEL" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "borderEnabledChanged(bool)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "borderEnabledChanged(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "borderEnabledChanged(bool)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void facingCameraChanged( bool enabled )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ONFACINGCAMERACHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "facingCameraChanged(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCustom3DLabel::facingCameraChanged, 
                                                              [sender]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "facingCameraChanged(bool)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCUSTOM3DLABEL" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "facingCameraChanged(bool)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "facingCameraChanged(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "facingCameraChanged(bool)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void fontChanged( const QFont & font )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ONFONTCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "fontChanged(QFont)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCustom3DLabel::fontChanged, 
                                                              [sender]
                                                              (const QFont & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "fontChanged(QFont)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCUSTOM3DLABEL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QFONT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "fontChanged(QFont)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "fontChanged(QFont)" );

      QObject::disconnect( Signals2_get_connection( sender, "fontChanged(QFont)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void textChanged( const QString & text )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ONTEXTCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "textChanged(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCustom3DLabel::textChanged, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "textChanged(QString)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCUSTOM3DLABEL" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "textChanged(QString)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "textChanged(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "textChanged(QString)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void textColorChanged( const QColor & color )
*/
HB_FUNC_STATIC( QCUSTOM3DLABEL_ONTEXTCOLORCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "textColorChanged(QColor)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCustom3DLabel::textColorChanged, 
                                                              [sender]
                                                              (const QColor & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "textColorChanged(QColor)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCUSTOM3DLABEL" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QCOLOR" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "textColorChanged(QColor)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QCustom3DLabel * sender = (QCustom3DLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "textColorChanged(QColor)" );

      QObject::disconnect( Signals2_get_connection( sender, "textColorChanged(QColor)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
