%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QPushButton>

$prototype=explicit QMessageBox ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = nullptr, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
$internalConstructor=|new2|QMessageBox::Icon,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::NoButton,QWidget *=nullptr,Qt::WindowFlags=Qt::Dialog OR Qt::MSWindowsFixedSizeDialogHint

/*
[1]explicit QMessageBox ( QWidget * parent = nullptr )
[2]QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = nullptr, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
*/

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QMessageBox_new1();
  }
  else if( ISBETWEEN(3,6) && ISNUM(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTQWIDGET(5) && ISOPTNUM(6) )
  {
    QMessageBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addButton ( QAbstractButton * button, ButtonRole role )
$internalMethod=|void|addButton,addButton1|QAbstractButton *,QMessageBox::ButtonRole

$prototype=QPushButton * addButton ( const QString & text, ButtonRole role )
$internalMethod=|QPushButton *|addButton,addButton2|const QString &,QMessageBox::ButtonRole

$prototype=QPushButton * addButton ( StandardButton button )
$internalMethod=|QPushButton *|addButton,addButton3|QMessageBox::StandardButton

/*
[1]void addButton ( QAbstractButton * button, ButtonRole role )
[2]QPushButton * addButton ( const QString & text, ButtonRole role )
[3]QPushButton * addButton ( StandardButton button )
*/

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QMessageBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QMessageBox_addButton2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) )
  {
    QMessageBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addButton

$prototype=QAbstractButton * button ( StandardButton which ) const
$method=|QAbstractButton *|button|QMessageBox::StandardButton

$prototype=ButtonRole buttonRole ( QAbstractButton * button ) const
$method=|QMessageBox::ButtonRole|buttonRole|QAbstractButton *

$prototype=QList<QAbstractButton *> buttons () const
$method=|QList<QAbstractButton *>|buttons|

$prototypeV2=QAbstractButton * clickedButton() const

$prototypeV2=QPushButton * defaultButton() const

$prototype=QString detailedText () const
$method=|QString|detailedText||#ifndef QT_NO_TEXTEDIT

$prototype=void setDetailedText ( const QString & text )
$method=|void|setDetailedText|const QString &|#ifndef QT_NO_TEXTEDIT

$prototypeV2=QAbstractButton * escapeButton() const

$prototypeV2=QMessageBox::Icon icon() const

$prototype=void setIcon ( Icon )
$method=|void|setIcon|QMessageBox::Icon

$prototypeV2=QPixmap iconPixmap() const

$prototype=void setIconPixmap ( const QPixmap & pixmap )
$method=|void|setIconPixmap|const QPixmap &

$prototypeV2=QString informativeText() const

$prototype=void setInformativeText ( const QString & text )
$method=|void|setInformativeText|const QString &

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=void removeButton ( QAbstractButton * button )
$method=|void|removeButton|QAbstractButton *

$prototype=void setDefaultButton ( QPushButton * button )
$internalMethod=|void|setDefaultButton,setDefaultButton1|QPushButton *

$prototype=void setDefaultButton ( StandardButton button )
$internalMethod=|void|setDefaultButton,setDefaultButton2|QMessageBox::StandardButton

/*
[1]void setDefaultButton ( QPushButton * button )
[2]void setDefaultButton ( StandardButton button )
*/

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    QMessageBox_setDefaultButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setDefaultButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setDefaultButton

$prototype=void setEscapeButton ( QAbstractButton * button )
$internalMethod=|void|setEscapeButton,setEscapeButton1|QAbstractButton *

$prototype=void setEscapeButton ( StandardButton button )
$internalMethod=|void|setEscapeButton,setEscapeButton2|QMessageBox::StandardButton

/*
[1]void setEscapeButton ( QAbstractButton * button )
[2]void setEscapeButton ( StandardButton button )
*/

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QMessageBox_setEscapeButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setEscapeButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setEscapeButton

$prototype=void setWindowModality ( Qt::WindowModality windowModality )
$method=|void|setWindowModality|Qt::WindowModality

$prototype=void setWindowTitle ( const QString & title )
$method=|void|setWindowTitle|const QString &

$prototype=StandardButton standardButton ( QAbstractButton * button ) const
$method=|QMessageBox::StandardButton|standardButton|QAbstractButton *

$prototypeV2=QMessageBox::StandardButtons standardButtons() const

$prototype=void setStandardButtons ( StandardButtons buttons )
$method=|void|setStandardButtons|QMessageBox::StandardButtons

$prototypeV2=QString text() const

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototypeV2=Qt::TextFormat textFormat() const

$prototype=void setTextFormat ( Qt::TextFormat format )
$method=|void|setTextFormat|Qt::TextFormat

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool|#ifdef Q_OS_WINCE

$prototypeV2=int exec()

$prototype=static void about ( QWidget * parent, const QString & title, const QString & text )
$staticMethod=|void|about|QWidget *,const QString &,const QString &

$prototype=static void aboutQt ( QWidget * parent, const QString & title = QString() )
$staticMethod=|void|aboutQt|QWidget *,const QString &=QString()

$prototype=static StandardButton critical ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
$staticMethod=|QMessageBox::StandardButton|critical|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

$prototype=static StandardButton information ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
$staticMethod=|QMessageBox::StandardButton|information|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

$prototype=static StandardButton question ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
$staticMethod=|QMessageBox::StandardButton|question|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

$prototype=static StandardButton warning ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
$staticMethod=|QMessageBox::StandardButton|warning|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototype=void setTextInteractionFlags (Qt::TextInteractionFlags flags)
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

$prototypeV2=QCheckBox * checkBox() const

$prototype=void setCheckBox (QCheckBox *cb)
$method=|void|setCheckBox|QCheckBox *

$prototype=static QPixmap standardIcon(Icon icon)
$staticMethod=|QPixmap|standardIcon|QMessageBox::Icon

$prototype=QString buttonText(int button) const
$method=|QString|buttonText|int

$prototype=void setButtonText(int button, const QString &text)
$method=|void|setButtonText|int,const QString &

%%
%% SIGNALS
%%

$prototype=void buttonClicked( QAbstractButton * button )
$signalMethod=|void|buttonClicked|QAbstractButton *

#pragma ENDDUMP
