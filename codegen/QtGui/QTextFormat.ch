%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QTextFormat::FormatType
*/
#define QTextFormat_InvalidFormat                                    -1
#define QTextFormat_BlockFormat                                      1
#define QTextFormat_CharFormat                                       2
#define QTextFormat_ListFormat                                       3
#define QTextFormat_TableFormat                                      4
#define QTextFormat_FrameFormat                                      5
#define QTextFormat_UserFormat                                       100

/*
enum QTextFormat::Property
*/
#define QTextFormat_ObjectIndex                                      0x0
#define QTextFormat_CssFloat                                         0x0800
#define QTextFormat_LayoutDirection                                  0x0801
#define QTextFormat_OutlinePen                                       0x810
#define QTextFormat_BackgroundBrush                                  0x820
#define QTextFormat_ForegroundBrush                                  0x821
#define QTextFormat_ObjectSelectionBrush                             0x822
#define QTextFormat_BackgroundImageUrl                               0x823
#define QTextFormat_BlockAlignment                                   0x1010
#define QTextFormat_BlockTopMargin                                   0x1030
#define QTextFormat_BlockBottomMargin                                0x1031
#define QTextFormat_BlockLeftMargin                                  0x1032
#define QTextFormat_BlockRightMargin                                 0x1033
#define QTextFormat_TextIndent                                       0x1034
#define QTextFormat_TabPositions                                     0x1035
#define QTextFormat_BlockIndent                                      0x1040
#define QTextFormat_LineHeight                                       0x1048
#define QTextFormat_LineHeightType                                   0x1049
#define QTextFormat_BlockNonBreakableLines                           0x1050
#define QTextFormat_BlockTrailingHorizontalRulerWidth                0x1060
#define QTextFormat_FirstFontProperty                                0x1FE0
#define QTextFormat_FontCapitalization                               QTextFormat_FirstFontProperty
#define QTextFormat_FontLetterSpacingType                            0x2033
#define QTextFormat_FontLetterSpacing                                0x1FE1
#define QTextFormat_FontWordSpacing                                  0x1FE2
#define QTextFormat_FontStretch                                      0x2034
#define QTextFormat_FontStyleHint                                    0x1FE3
#define QTextFormat_FontStyleStrategy                                0x1FE4
#define QTextFormat_FontKerning                                      0x1FE5
#define QTextFormat_FontHintingPreference                            0x1FE6
#define QTextFormat_FontFamily                                       0x2000
#define QTextFormat_FontPointSize                                    0x2001
#define QTextFormat_FontSizeAdjustment                               0x2002
#define QTextFormat_FontSizeIncrement                                QTextFormat_FontSizeAdjustment
#define QTextFormat_FontWeight                                       0x2003
#define QTextFormat_FontItalic                                       0x2004
#define QTextFormat_FontUnderline                                    0x2005
#define QTextFormat_FontOverline                                     0x2006
#define QTextFormat_FontStrikeOut                                    0x2007
#define QTextFormat_FontFixedPitch                                   0x2008
#define QTextFormat_FontPixelSize                                    0x2009
#define QTextFormat_LastFontProperty                                 QTextFormat_FontPixelSize
#define QTextFormat_TextUnderlineColor                               0x2010
#define QTextFormat_TextVerticalAlignment                            0x2021
#define QTextFormat_TextOutline                                      0x2022
#define QTextFormat_TextUnderlineStyle                               0x2023
#define QTextFormat_TextToolTip                                      0x2024
#define QTextFormat_IsAnchor                                         0x2030
#define QTextFormat_AnchorHref                                       0x2031
#define QTextFormat_AnchorName                                       0x2032
#define QTextFormat_ObjectType                                       0x2f00
#define QTextFormat_ListStyle                                        0x3000
#define QTextFormat_ListIndent                                       0x3001
#define QTextFormat_ListNumberPrefix                                 0x3002
#define QTextFormat_ListNumberSuffix                                 0x3003
#define QTextFormat_FrameBorder                                      0x4000
#define QTextFormat_FrameMargin                                      0x4001
#define QTextFormat_FramePadding                                     0x4002
#define QTextFormat_FrameWidth                                       0x4003
#define QTextFormat_FrameHeight                                      0x4004
#define QTextFormat_FrameTopMargin                                   0x4005
#define QTextFormat_FrameBottomMargin                                0x4006
#define QTextFormat_FrameLeftMargin                                  0x4007
#define QTextFormat_FrameRightMargin                                 0x4008
#define QTextFormat_FrameBorderBrush                                 0x4009
#define QTextFormat_FrameBorderStyle                                 0x4010
#define QTextFormat_TableColumns                                     0x4100
#define QTextFormat_TableColumnWidthConstraints                      0x4101
#define QTextFormat_TableCellSpacing                                 0x4102
#define QTextFormat_TableCellPadding                                 0x4103
#define QTextFormat_TableHeaderRowCount                              0x4104
#define QTextFormat_TableCellRowSpan                                 0x4810
#define QTextFormat_TableCellColumnSpan                              0x4811
#define QTextFormat_TableCellTopPadding                              0x4812
#define QTextFormat_TableCellBottomPadding                           0x4813
#define QTextFormat_TableCellLeftPadding                             0x4814
#define QTextFormat_TableCellRightPadding                            0x4815
#define QTextFormat_ImageName                                        0x5000
#define QTextFormat_ImageWidth                                       0x5010
#define QTextFormat_ImageHeight                                      0x5011
#define QTextFormat_SuppressText                                     0x5012
#define QTextFormat_SuppressBackground                               0x513
#define QTextFormat_FullWidthSelection                               0x06000
#define QTextFormat_PageBreakPolicy                                  0x7000
#define QTextFormat_UserProperty                                     0x100000

/*
enum QTextFormat::ObjectTypes
*/
#define QTextFormat_NoObject                                         0
#define QTextFormat_ImageObject                                      1
#define QTextFormat_TableObject                                      2
#define QTextFormat_TableCellObject                                  3
#define QTextFormat_UserObject                                       0x1000

/*
enum QTextFormat::PageBreakFlag
*/
#define QTextFormat_PageBreak_Auto                                   0
#define QTextFormat_PageBreak_AlwaysBefore                           0x001
#define QTextFormat_PageBreak_AlwaysAfter                            0x010
#define QTextFormat_PageBreak_AlwaysInside                           0x100
