%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

/*
enum QCanBusDevice::CanBusError
*/
#define QCanBusDevice_NoError                                        0
#define QCanBusDevice_ReadError                                      1
#define QCanBusDevice_WriteError                                     2
#define QCanBusDevice_ConnectionError                                3
#define QCanBusDevice_ConfigurationError                             4
#define QCanBusDevice_UnknownError                                   5

/*
enum QCanBusDevice::CanBusDeviceState
*/
#define QCanBusDevice_UnconnectedState                               0
#define QCanBusDevice_ConnectingState                                1
#define QCanBusDevice_ConnectedState                                 2
#define QCanBusDevice_ClosingState                                   3

/*
enum QCanBusDevice::ConfigurationKey
*/
#define QCanBusDevice_RawFilterKey                                   0
#define QCanBusDevice_ErrorFilterKey                                 1
#define QCanBusDevice_LoopbackKey                                    2
#define QCanBusDevice_ReceiveOwnKey                                  3
#define QCanBusDevice_BitRateKey                                     4
#define QCanBusDevice_CanFdKey                                       5
#define QCanBusDevice_DataBitRateKey                                 6
#define QCanBusDevice_UserKey                                        30

/*
enum QCanBusDevice::Direction
flags QCanBusDevice::Directions
*/
#define QCanBusDevice_Input                                          1
#define QCanBusDevice_Output                                         2
#define QCanBusDevice_AllDirections                                  hb_bitor(QCanBusDevice_Input, QCanBusDevice_Output)
