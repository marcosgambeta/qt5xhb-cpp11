%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPrintSupport

$header

/*
enum QAbstractPrintDialog::PrintDialogOption
flags QAbstractPrintDialog::PrintDialogOptions
*/
#define QAbstractPrintDialog_None                                    0x0000
#define QAbstractPrintDialog_PrintToFile                             0x0001
#define QAbstractPrintDialog_PrintSelection                          0x0002
#define QAbstractPrintDialog_PrintPageRange                          0x0004
#define QAbstractPrintDialog_PrintShowPageSize                       0x0008
#define QAbstractPrintDialog_PrintCollateCopies                      0x0010
#define QAbstractPrintDialog_DontUseSheet                            0x0020
#define QAbstractPrintDialog_PrintCurrentPage                        0x0040

/*
enum QAbstractPrintDialog::PrintRange
*/
#define QAbstractPrintDialog_AllPages                                0
#define QAbstractPrintDialog_Selection                               1
#define QAbstractPrintDialog_PageRange                               2
#define QAbstractPrintDialog_CurrentPage                             3
