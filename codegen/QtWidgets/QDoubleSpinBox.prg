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

$beginClassFrom=QAbstractSpinBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=prototype=explicit QDoubleSpinBox ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=QString cleanText() const

$prototypeV2=int decimals() const

$prototype=void setDecimals ( int prec )
$method=|void|setDecimals|int

$prototypeV2=double maximum() const

$prototype=void setMaximum ( double max )
$method=|void|setMaximum|double

$prototypeV2=double minimum() const

$prototype=void setMinimum ( double min )
$method=|void|setMinimum|double

$prototypeV2=QString prefix() const

$prototype=void setPrefix ( const QString & prefix )
$method=|void|setPrefix|const QString &

$prototype=void setRange ( double min, double max )
$method=|void|setRange|double,double

$prototypeV2=double singleStep() const

$prototype=void setSingleStep ( double val )
$method=|void|setSingleStep|double

$prototypeV2=QString suffix() const

$prototype=void setSuffix ( const QString & suffix )
$method=|void|setSuffix|const QString &

$prototype=virtual QString textFromValue ( double value ) const
$virtualMethod=|QString|textFromValue|double

$prototypeV2=double value() const

$prototype=void setValue ( double val )
$method=|void|setValue|double

$prototype=virtual double valueFromText ( const QString & text ) const
$virtualMethod=|double|valueFromText|const QString &

$prototype=virtual void fixup ( QString & str ) const
$virtualMethod=|void|fixup|QString &

$prototype=virtual QValidator::State validate ( QString & text, int & pos ) const
$virtualMethod=|QValidator::State|validate|QString &,int &

%%
%% SIGNALS
%%

$prototype=void valueChanged( double d )
$signalMethod=|void|valueChanged,valueChanged1,QOverload<double>|double

$prototype=void valueChanged( const QString & text )
$signalMethod=|void|valueChanged,valueChanged2,QOverload<const QString &>|const QString &

#pragma ENDDUMP
