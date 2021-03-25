/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLQUERY
REQUEST QSQLRECORD
#endif

CLASS QSqlDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD close
   METHOD commit
   METHOD connectOptions
   METHOD setConnectOptions
   METHOD connectionName
   METHOD databaseName
   METHOD setDatabaseName
   METHOD driver
   METHOD driverName
   METHOD exec
   METHOD hostName
   METHOD setHostName
   METHOD isOpen
   METHOD isOpenError
   METHOD isValid
   METHOD lastError
   METHOD numericalPrecisionPolicy
   METHOD setNumericalPrecisionPolicy
   METHOD open
   METHOD password
   METHOD setPassword
   METHOD port
   METHOD setPort
   METHOD primaryIndex
   METHOD record
   METHOD rollback
   METHOD tables
   METHOD transaction
   METHOD userName
   METHOD setUserName
   METHOD addDatabase
   METHOD cloneDatabase
   METHOD connectionNames
   METHOD contains
   METHOD database
   METHOD drivers
   METHOD isDriverAvailable
   METHOD registerSqlDriver
   METHOD removeDatabase

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QSqlDatabase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtSql/QSqlDatabase>
#endif

#include <QtCore/QStringList>
#include <QtSql/QSqlDriver>
#include <QtSql/QSqlError>
#include <QtSql/QSqlIndex>
#include <QtSql/QSqlQuery>
#include <QtSql/QSqlRecord>

/*
QSqlDatabase()
*/
void QSqlDatabase_new1()
{
  auto obj = new QSqlDatabase();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QSqlDatabase( const QSqlDatabase & other )
*/
void QSqlDatabase_new2()
{
  auto obj = new QSqlDatabase( *PQSQLDATABASE( 1 ) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSQLDATABASE_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QSqlDatabase_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQSQLDATABASE( 1 ) )
  {
    QSqlDatabase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLDATABASE_DELETE )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void close()
*/
HB_FUNC_STATIC( QSQLDATABASE_CLOSE )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->close();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool commit()
*/
HB_FUNC_STATIC( QSQLDATABASE_COMMIT )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->commit() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString connectOptions() const
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTOPTIONS )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->connectOptions() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setConnectOptions( const QString & options = QString() )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETCONNECTOPTIONS )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISCHAR( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      obj->setConnectOptions( OPQSTRING( 1, QString() ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString connectionName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTIONNAME )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->connectionName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString databaseName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASENAME )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->databaseName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setDatabaseName( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETDATABASENAME )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setDatabaseName( PQSTRING( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSqlDriver * driver() const
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVER )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSqlDriver * ptr = obj->driver();
      Qt5xHb::createReturnQObjectClass( ptr, "QSQLDRIVER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString driverName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVERNAME )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->driverName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSqlQuery exec( const QString & query = QString() ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_EXEC )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISCHAR( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      auto ptr = new QSqlQuery( obj->exec( OPQSTRING( 1, QString() ) ) );
      Qt5xHb::createReturnClass( ptr, "QSQLQUERY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString hostName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_HOSTNAME )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->hostName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setHostName( const QString & host )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETHOSTNAME )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setHostName( PQSTRING( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isOpen() const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISOPEN )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isOpen() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isOpenError() const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISOPENERROR )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isOpenError() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISVALID )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSqlError lastError() const
*/
HB_FUNC_STATIC( QSQLDATABASE_LASTERROR )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QSqlError( obj->lastError() );
      Qt5xHb::createReturnClass( ptr, "QSQLERROR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const
*/
HB_FUNC_STATIC( QSQLDATABASE_NUMERICALPRECISIONPOLICY )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->numericalPrecisionPolicy() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setNumericalPrecisionPolicy( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETNUMERICALPRECISIONPOLICY )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setNumericalPrecisionPolicy( static_cast<QSql::NumericalPrecisionPolicy>( hb_parni( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool open()
*/
void QSqlDatabase_open1()
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    RBOOL( obj->open() );
  }
}

/*
bool open( const QString & user, const QString & password )
*/
void QSqlDatabase_open2()
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    RBOOL( obj->open( PQSTRING( 1 ), PQSTRING( 2 ) ) );
  }
}

HB_FUNC_STATIC( QSQLDATABASE_OPEN )
{
  if( ISNUMPAR( 0 ) )
  {
    QSqlDatabase_open1();
  }
  else if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISCHAR( 2 ) )
  {
    QSqlDatabase_open2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString password() const
*/
HB_FUNC_STATIC( QSQLDATABASE_PASSWORD )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->password() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPassword( const QString & password )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETPASSWORD )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setPassword( PQSTRING( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int port() const
*/
HB_FUNC_STATIC( QSQLDATABASE_PORT )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->port() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPort( int port )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETPORT )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setPort( PINT( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSqlIndex primaryIndex( const QString & tablename ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_PRIMARYINDEX )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      auto ptr = new QSqlIndex( obj->primaryIndex( PQSTRING( 1 ) ) );
      Qt5xHb::createReturnClass( ptr, "QSQLINDEX", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSqlRecord record( const QString & tablename ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_RECORD )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      auto ptr = new QSqlRecord( obj->record( PQSTRING( 1 ) ) );
      Qt5xHb::createReturnClass( ptr, "QSQLRECORD", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool rollback()
*/
HB_FUNC_STATIC( QSQLDATABASE_ROLLBACK )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->rollback() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList tables( QSql::TableType type = QSql::Tables ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_TABLES )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      RQSTRINGLIST( obj->tables( HB_ISNIL( 1 ) ? static_cast< QSql::TableType >( QSql::Tables ) : static_cast< QSql::TableType >( hb_parni( 1 ) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool transaction()
*/
HB_FUNC_STATIC( QSQLDATABASE_TRANSACTION )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->transaction() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString userName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_USERNAME )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->userName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setUserName( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETUSERNAME )
{
  auto obj = static_cast< QSqlDatabase * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setUserName( PQSTRING( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QSqlDatabase addDatabase( const QString & type, const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ) )
*/
void QSqlDatabase_addDatabase1()
{
  auto ptr = new QSqlDatabase( QSqlDatabase::addDatabase( PQSTRING( 1 ), OPQSTRING( 2, QLatin1String( QSqlDatabase::defaultConnection ) ) ) );
  Qt5xHb::createReturnClass( ptr, "QSQLDATABASE", true );
}

/*
static QSqlDatabase addDatabase( QSqlDriver * driver, const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ) )
*/
void QSqlDatabase_addDatabase2()
{
  auto ptr = new QSqlDatabase( QSqlDatabase::addDatabase( PQSQLDRIVER( 1 ), OPQSTRING( 2, QLatin1String( QSqlDatabase::defaultConnection ) ) ) );
  Qt5xHb::createReturnClass( ptr, "QSQLDATABASE", true );
}

HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE )
{
  if( ISBETWEEN( 1, 2 ) && HB_ISCHAR( 1 ) && ( HB_ISCHAR( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QSqlDatabase_addDatabase1();
  }
  else if( ISBETWEEN( 1, 2 ) && ISQSQLDRIVER( 1 ) && ( HB_ISCHAR( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QSqlDatabase_addDatabase2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QSqlDatabase cloneDatabase( const QSqlDatabase & other, const QString & connectionName )
*/
HB_FUNC_STATIC( QSQLDATABASE_CLONEDATABASE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 2 ) && ISQSQLDATABASE( 1 ) && HB_ISCHAR( 2 ) )
  {
#endif
    auto ptr = new QSqlDatabase( QSqlDatabase::cloneDatabase( *PQSQLDATABASE( 1 ), PQSTRING( 2 ) ) );
    Qt5xHb::createReturnClass( ptr, "QSQLDATABASE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QStringList connectionNames()
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTIONNAMES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RQSTRINGLIST( QSqlDatabase::connectionNames() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool contains( const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_CONTAINS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 0, 1 ) && ( HB_ISCHAR( 1 ) || HB_ISNIL( 1 ) ) )
  {
#endif
    RBOOL( QSqlDatabase::contains( OPQSTRING( 1, QLatin1String( QSqlDatabase::defaultConnection ) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QSqlDatabase database( const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ), bool open = true )
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 0, 2 ) && ( HB_ISCHAR( 1 ) || HB_ISNIL( 1 ) ) && ( HB_ISLOG( 2 ) || HB_ISNIL( 2 ) ) )
  {
#endif
    auto ptr = new QSqlDatabase( QSqlDatabase::database( OPQSTRING( 1, QLatin1String( QSqlDatabase::defaultConnection ) ), OPBOOL( 2, true ) ) );
    Qt5xHb::createReturnClass( ptr, "QSQLDATABASE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QStringList drivers()
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVERS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RQSTRINGLIST( QSqlDatabase::drivers() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool isDriverAvailable( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_ISDRIVERAVAILABLE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
  {
#endif
    RBOOL( QSqlDatabase::isDriverAvailable( PQSTRING( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void registerSqlDriver( const QString & name, QSqlDriverCreatorBase * creator )
*/
HB_FUNC_STATIC( QSQLDATABASE_REGISTERSQLDRIVER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && ISQSQLDRIVERCREATORBASE( 2 ) )
  {
#endif
    QSqlDatabase::registerSqlDriver( PQSTRING( 1 ), PQSQLDRIVERCREATORBASE( 2 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void removeDatabase( const QString & connectionName )
*/
HB_FUNC_STATIC( QSQLDATABASE_REMOVEDATABASE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
  {
#endif
    QSqlDatabase::removeDatabase( PQSTRING( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QSQLDATABASE_SELFDESTRUCTION )
{
  hb_retl( static_cast< bool >( hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) ) );
}

HB_FUNC_STATIC( QSQLDATABASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl( 1 ) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
