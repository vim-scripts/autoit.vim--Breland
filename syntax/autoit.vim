" Vim syntax file

" Language:		AutoIt from www.autoitscript.com
" Maintainer:	Riccardo Casini <ric@libero.it>
" ChangeLog:	v1.2 10/07/05 by Jared Breland <jbreland@legroom.net>
" 						update for AutoIt 3.1.1.78-beta
" 						added Options section
" 				v1.1 03/15/05 by Jared Breland <jbreland@legroom.net>
" 						updated for AutoIt 3.1.0

" HOWTO USE IT (INSTALL):
" 1) copy the file in the current vim syntax folder
" 2) add following line in your filetype.vim file, in the correct position,
"	to recognize .au3 files by extension:
"	au BufNewFile, BufRead *.au3 setf autoit

" used inside floating points
se iskeyword+=.
se iskeyword+=+

" Force definition of command HiLink, to assimilate from_group to to_group
" highlighting, only when an item doesn't have highlighting yet
com! -nargs=+ HiLink hi def link <args>

" AutoIt is not case dependent
sy case ignore

" Definitions for AutoIt reserved keywords
sy keyword au3keyword Default False True
sy keyword au3Keyword Const Dim Global Local ReDim
sy keyword au3Keyword If Else ElseIf Then EndIf
sy keyword au3Keyword Select Switch Case EndSelect EndSwitch
sy keyword au3Keyword Enum For In To Step Next
sy keyword au3Keyword With While EndWith Wend
sy keyword au3Keyword Do Until
sy keyword au3Keyword ContinueCase ContinueLoop ExitLoop Exit

" inside script inclusion and global options
sy match au3Included display contained "<[^>]*>"
sy match au3Include	display "^\s*#\s*include\>\s*["<]"
	\ contains=au3Included,au3String
sy match au3Include "^\s*#include-once\>"
sy match au3Include "^\s*#NoTrayIcon\>"

" user-defined functions
sy keyword au3Keyword Func ByRef EndFunc Return OnAutoItStart OnAutoItExit

" built-in functions
" environment management
sy keyword au3Function ClipGet ClipPut EnvGet EnvSet EnvUpdate MemGetStats
" file, directory, and disk management
sy keyword au3Function ConsoleRead ConsoleWriteError
sy keyword au3Function DirCopy DirCreate DirGetSize DirMove DirRemove
sy keyword au3Function DriveGetDrive DriveGetFileSystem DriveGetLabel
	\ DriveGetSerial DriveGetType DriveMapAdd DriveMapDel DriveMapGet
	\ DriveSetLabel DriveSpaceFree DriveSpaceTotal DriveStatus
sy keyword au3Function FileChangeDir FileClose FileCopy FileCreateShortcut
	\ FileDelete FileExists FileFindFirstFile FileFindNextFile FileGetAttrib
	\ FileGetLongName FileGetShortcut FileGetShortName FileGetSize FileGetTime
	\ FileGetVersion FileInstall FileMove FileOpen FileOpenDialog FileRead
	\ FileReadLine FileRecycle FileRecycleEmpty FileSaveDialog FileSelectFolder
	\ FileSetAttrib FileSetTime FileWrite FileWriteLine
sy keyword au3Function IniDelete IniRead IniReadSection IniReadSectionNames
	\ IniRenameSection IniWrite
sy keyword au3Function StderrRead StdinWrite StdoutRead
" graphic and sound
sy keyword au3Function Beep PixelChecksum PixelGetColor PixelSearch SoundPlay
	\ SoundSetWaveVolume
" gui reference
sy keyword au3Function GUICreate GUIDelete GUICtrlGetState GUICtrlRead
	\ GUICtrlRecvMsg GUICtrlSendMsg GUICtrlSendToDummy GUIGetCursorInfo
	\ GUIGetMsg GUIStartGroup GUISwitch
sy keyword au3Function GUICtrlCreateAvi GUICtrlCreateButton
	\ GUICtrlCreateCheckbox GUICtrlCreateCombo GUICtrlCreateContextMenu
	\ GUICtrlCreateDate GUICtrlCreateDummy GUICtrlCreateEdit
	\ GUICtrlCreateGraphic GUICtrlCreateGroup GUICtrlCreateIcon
	\ GUICtrlCreateInput GUICtrlCreateLabel GUICtrlCreateList
	\ GUICtrlCreateListView GUICtrlCreateListViewItem GUICtrlCreateMenu
	\ GUICtrlCreateMenuItem GUICtrlCreateMonthCal GUICtrlCreateObj
	\ GUICtrlCreatePic GUICtrlCreateProgress GUICtrlCreateRadio
	\ GUICtrlCreateSlider GUICtrlCreateTab GUICtrlCreateTabItem
	\ GUICtrlCreateTreeView GUICtrlCreateTreeViewItem
	\ GUICtrlCreateUpDown GUICtrlDelete
sy keyword au3Function GUICtrlSetBkColor GUICtrlSetColor GUICtrlSetCursor
	\ GUICtrlSetData GUICtrlSetFont GUICtrlSetGraphic GUICtrlSetImage
	\ GUICtrlSetLimit GUICtrlSetOnEvent GUICtrlSetPos GUICtrlSetResizing
	\ GUICtrlSetState GUICtrlSetStyle GUICtrlSetTip
sy keyword au3Function GUISetBkColor GUISetCoord GUISetCursor GUISetFont
	\ GUISetHelp GUISetIcon GUISetOnEvent GUISetState
" keyboard control
sy keyword au3Function HotKeySet Send
" math
sy keyword au3Function Abs ACos ASin ATan BitAND BitNOT BitOR BitRotate BitShift
	\ BitXOR Cos Ceiling Exp Floor Log Mod Random Round Sin Sqrt Tan
" message boxes and dialogs
sy keyword au3Function InputBox MsgBox ProgressOff ProgressOn ProgressSet
	\ SplashImageOn SplashOff SplashTextOn ToolTip
" miscellaneous
sy keyword au3Function AdlibDisable AdlibEnable AutoItSetOption
	\ AutoItWinGetTitle AutoItWinSetTitle BlockInput Break Call CDTray
	\ ConsoleWrite Execute Opt SetError SetExtended
" mouse control
sy keyword au3Function MouseClick MouseClickDrag MouseDown MouseGetCursor
	\ MouseGetPos MouseMove MouseUp MouseWheel
" network
sy keyword au3Function FtpSetProxy HttpSetProxy InetGet InetGetSize Ping
	\ TCPAccept TCPCloseSocket TCPConnect TCPListen TCPNameToIp TCPRecv
	\ TCPSend TCPShutDown UDPBind UDPCloseSocket UDPOpen UDPRecv UDPSend
	\ UDPShutdown UDPStartup
" obj/com reference
sy keyword au3Function ObjCreate ObjEvent ObjGet ObjName
" process management
sy keyword au3Function DllCall DllClose DllOpen DllStructCreate DllStructDelete
	\ DllStructGetPtr DllStructGetSize DllStructSetData PluginClose PluginOpen
	\ ProcessClose ProcessExists ProcessSetPriority ProcessList ProcessWait
	\ ProcessWaitClose Run RunAsSet RunWait Shutdown
" registry management
sy keyword au3Function RegDelete RegEnumKey RegEnumVal RegRead RegWrite
" string management
sy keyword au3Function StringAddCR StringFormat StringInStr StringIsAlNum
	\ StringIsAlpha StringIsaSCII StringIsDigit StringIsFloat StringIsInt
	\ StringIsLower StringIsSpace StringIsUpper StringIsXDigit StringLeft
	\ StringLen StringLower StringMid StringRegExp StringRegExpReplace
	\ StringReplace StringRight StringSplit StringStripCR StringStripWS
	\ StringTrimLeft StringTrimRight StringUpper
" timer and delay
sy keyword au3Function Sleep TimerInit TimerDiff
" tray
sy keyword au3Function TrayCreateItem TrayCreateMenu TrayItemDelete
	\ TrayItemGetState TrayItemGetText TrayItemSetOnEvent TrayItemSetState
	\ TrayItemSetText TrayGetMsg TraySetClick TraySetIcon TraySetOnEvent
	\ TraySetPauseIcon TraySetState TraySetToolTip TrayTip
" variables and conversions
sy keyword au3Function Asc Assign Binary Chr Dec Eval Hex HWnd Int IsAdmin
	\ IsArray IsBool IsDeclared IsFloat IsHWnd IsInt IsKeyword IsNumber IsObj
	\ IsString Number String UBound
" window management
sy keyword au3Function ControlClick ControlCommand ControlDisable ControlEnable
	\ ControlFocus ControlGetFocus ControlGetHandle ControlGetPos
	\ ControlGetText ControlHide ControlListView ControlMove ControlSend
	\ ControlSetText ControlShow StatusBarGetText
sy keyword au3Function WinActivate WinaCtive WinClose WinExists WinFlash
	\ WinGetCaretPos WinGetClassList WinGetClientSize WinGetHandle WinGetPos
	\ WinGetProcess WinGetState WinGetText WinGetTitle WinKill WinList
	\ WinMenuSelectItem WinMinimizeAll WinMinimizeAllUndo WinMove WinSetOnTop
	\ WinSetState WinSetTitle WinSetTrans WinWait WinWaitActive WinWaitClose
	\ WinWaitNotActive

" user defined functions
" array
sy keyword au3Function _ArrayAdd _ArrayBinarySearch _ArrayCreate _ArrayDelete
	\ _ArrayDisplay _ArrayInsert _ArrayMax _ArrayMaxIndex _ArrayMin
	\ _ArrayMinIndex _ArrayPop _ArrayPush _ArrayReverse _ArraySearch _ArraySort
	\ _ArraySwap _ArrayToClip _ArrayToString _ArrayTrim
" color
sy keyword au3Function _ColorgetBlue _ColorGetGreen _ColorGetRed
" date
sy keyword au3Function _DateAdd _DateDayOfWeek _DateDaysInMonth _DateDiff
	\ _DateIsLeapYear _DateIsValid _DateTimeFormat _DateTimeSplit
	\ _DateTodayOfWeek _DateTodayValue _DateValueToday _Now _NowCalc
	\ _NowCalcDate _NowDate _NowTime _TicksToTime  _TicksToTicks _WeekNumberISO
" file
sy keyword au3Function _FileCountLines _FileCreate _FileListToArray
	\ _FileReadToArray _FileWriteFromArray _FileWriteLog _PathFull _PathMake
	\ _PathSplit _ReplaceStringInFile _TempFile
" guicombo
sy keyword au3Function _GUICtrlComboAddDir _GUICtrlComboAddString
	\ _GUICtrlComboAutoComplete _GUICtrlComboDeleteString
	\ _GUICtrlComboFindString _GUICtrlComboGetCount _GUICtrlComboGetCurSel
	\ _GUICtrlComboGetDroppedControlRect _GUICtrlComboGetDroppedState
	\ _GUICtrlComboGetDroppedWidth _GUICtrlComboGetEditSel
	\ _GUICtrlComboGetExtendedUI _GUICtrlComboGetHorizontalExtent
	\ _GUICtrlComboGetItemHeight _GUICtrlComboGetLBText
	\ _GUICtrlComboGetLBTextLen _GUICtrlComboGetLocale
	\ _GUICtrlComboGetMinVisible _GUICtrlComboGetTopIndex
	\ _GUICtrlComboInitStorage _GUICtrlComboInsertString _GUICtrlComboLimitText
	\ _GUICtrlComboResetContent _GUICtrlComboSelectString _GUICtrlComboSetCurSel
	\ _GUICtrlComboSetDroppedWidth _GUICtrlComboSetEditSel
	\ _GUICtrlComboSetExtendedUI _GUICtrlComboSetHorizontalExtent
	\ _GUICtrlComboSetItemHeight _GUICtrlComboSetMinVisible
	\ _GUICtrlComboSetTopIndex _GUICtrlComboShowDropDown
" guiedit
sy keyword au3Function _GUICtrlEditCanUndo _GUICtrlEditEmptyUndoBuffer
	\ _GUICtrlEditGetFirstVisibleLine _GUICtrlEditGetLineCount
	\ _GUICtrlEditGetModify _GUICtrlEditGetRECT _GUICtrlEditGetSel
	\ _GUICtrlEditLineFromChar _GUICtrlEditLineIndex _GUICtrlEditLineLength
	\ _GUICtrlEditLineScroll _GUICtrlEditReplaceSel _GUICtrlEditScroll
	\ _GUICtrlEditSetModify _GUICtrlEditSetSel _GUICtrlEditUndo
" guilist
sy keyword au3Function _GUICtrlListAddDir _GUICtrlListAddItem _GUICtrlListClear
	\ _GUICtrlListCount _GUICtrlListDeleteItem _GUICtrlListFindString
	\ _GUICtrlListGetAnchorIndex _GUICtrlListGetCaretIndex
	\ _GUICtrlListGetHorizontalExtent _GUICtrlListGetInfo
	\ _GUICtrlListGetItemRect _GUICtrlListGetLocale _GUICtrlListGetSelCount
	\ _GUICtrlListGetSelItems _GUICtrlListGetSelItemsText
	\ _GUICtrlListGetSelState _GUICtrlListGetText _GUICtrlListGetTextLen
	\ _GUICtrlListGetTopIndex _GUICtrlListInsertItem _GUICtrlListReplaceString
	\ _GUICtrlListSelectedIndex _GUICtrlListSelectString
	\ _GUICtrlListSelItemRange _GUICtrlListSelItemRangeEx
	\ _GUICtrlListSetAnchorIndex _GUICtrlListSetCaretIndex
	\ _GUICtrlListSetHorizontalExtent _GUICtrlListSetLocale _GUICtrlListSetSel
	\ _GUICtrlListSetTopIndex _GUICtrlListSort _GUICtrlListSwapString
" guilistview
sy keyword au3Function _GUICtrlListViewCopyItems _GUICtrlListViewDeleteAllItems
	\ _GUICtrlListViewDeleteColumn _GUICtrlListViewDeleteItem
	\ _GUICtrlListViewDeleteItemsSelected _GUICtrlListViewEnsureVisible
	\ _GUICtrlListViewGetBackColor _GUICtrlListViewGetCallBackMask
	\ _GUICtrlListViewGetCheckedState _GUICtrlListViewGetColumnOrder
	\ _GUICtrlListViewGetColumnWidth _GUICtrlListViewGetCounterPage
	\ _GUICtrlListViewGetCurSel _GUICtrlListViewGetExtendedListViewStyle
	\ _GUICtrlListViewGetHeader _GUICtrlListViewGetHotCursor
	\ _GUICtrlListViewGetHotItem _GUICtrlListViewGetHoverTime
	\ _GUICtrlListViewGetItemCount _GUICtrlListViewGetItemText
	\ _GUICtrlListViewGetItemTextArray _GUICtrlListViewGetNextItem
	\ _GUICtrlListViewGetSelectedCount _GUICtrlListViewGetSelectedIndices
	\ _GUICtrlListViewGetSubItemsCount _GUICtrlListViewGetTopIndex
	\ _GUICtrlListViewGetUnicodeFormat _GUICtrlListViewHideColumn
	\ _GUICtrlListViewInsertColumn _GUICtrlListViewInsertItem
	\ _GUICtrlListViewJustifyColumn _GUICtrlListViewScroll
	\ _GUICtrlListViewSetCheckState _GUICtrlListViewSetColumnOrder
	\ _GUICtrlListViewSetColumnWidth _GUICtrlListViewSetHotItem
	\ _GUICtrlListViewSetHoverTime _GUICtrlListViewSetItemCount
	\ _GUICtrlListViewSetItemSelState _GUICtrlListViewSetItemText
	\ _GUICtrlListViewSort
" guimonthcal
sy keyword au3Function _GUICtrlMonthCalGet1stDOW _GUICtrlMonthCalGetColor
	\ _GUICtrlMonthCalGetDelta _GUICtrlMonthCalGetMaxSelCount
	\ _GUICtrlMonthCalGetMaxTodayWidth _GUICtrlMonthCalGetMinReqRECT
	\ _GUICtrlMonthCalSet1stDOW _GUICtrlMonthCalSetColor
	\ _GUICtrlMonthCalSetDelta _GUICtrlMonthCalSetMaxSelCount
" guislider
sy keyword au3Function _GUICtrlSliderClearTics _GUICtrlSliderGetLineSize
	\ _GUICtrlSliderGetNumTics _GUICtrlSliderGetPageSize _GUICtrlSliderGetPos
	\ _GUICtrlSliderGetRangeMax _GUICtrlSliderGetRangeMin
	\ _GUICtrlSliderSetLineSize _GUICtrlSliderSetPageSize _GUICtrlSliderSetPos
	\ _GUICtrlSliderSetTicFreq
" guitab
sy keyword au3Function _GUICtrlTabDeleteAllItems _GUICtrlTabDeleteItem
	\ _GUICtrlTabDeselectAll _GUICtrlTabGetCurFocus _GUICtrlTabGetCurSel
	\ _GUICtrlTabGetExtendedStyle _GUICtrlTabGetItemCount _GUICtrlTabGetItemRECT
	\ _GUICtrlTabGetRowCount _GUICtrlTabGetUnicodeFormat
	\ _GUICtrlTabHighlightItem _GUICtrlTabSetCurFocus _GUICtrlTabSetCurSel
	\ _GUICtrlTabSetMinTabWidth _GUICtrlTabSetUnicodeFormat
" guitreeview
sy keyword au3Function _GUICtrlTreeViewDeleteAllItems _GUICtrlTreeViewDeleteItem
	\ _GUICtrlTreeViewExpand _GUICtrlTreeViewGetBkColor _GUICtrlTreeViewGetCount
	\ _GUICtrlTreeViewGetIndent _GUICtrlTreeViewGetLineColor
	\ _GUICtrlTreeViewGetParentHandle _GUICtrlTreeViewGetParentID
	\ _GUICtrlTreeViewGetTextColor _GUICtrlTreeViewItemGetTree
	\ _GUICtrlTreeViewSetBkColor _GUICtrlTreeViewSetIndent
	\ _GUICtrlTreeViewSetLineColor _GUICtrlTreeViewSetTextColor
	\ _GUICtrlTreeViewSort
" inet
sy keyword au3Function _GetIP _INetExplorerCapable _INetGetSource _INetMail
" math
sy keyword au3Function _Degree _MathCheckDiv _Max _Min _Radian
" miscellaneous
sy keyword au3Function _ChooseColor _ChooseFont _Iif _IsPressed _MouseTrap
	\ _Singleton
" process
sy keyword au3Function _ProcessGetPriority _RunDOS
" string
sy keyword au3Function _HexToString _StringEncrypt _StringProper _StringRepeat
	\ _StringReverse _StringToHex
" visa
sy keyword au3Function _viClose _viExecCommand _viFindGpib _viGpibBusReset
	\ _viGTL _viOpen _viSetAttribute _viSetTimeout

" read-only macros
sy match au3Builtin "@AppData\(Common\)\=Dir"
sy match au3Builtin "@AutoItExe"
sy match au3Builtin "@AutoItPID"
sy match au3Builtin "@AutoItVersion"
sy match au3Builtin "@CommonFilesDir"
sy match au3Builtin "@Compiled"
sy match au3Builtin "@ComputerName"
sy match au3Builtin "@ComSpec"
sy match au3Builtin "@CR\(LF\)\="
sy match au3Builtin "@Desktop\(Common\)\=Dir"
sy match au3Builtin "@DesktopDepth"
sy match au3Builtin "@DesktopHeight"
sy match au3Builtin "@DesktopRefresh"
sy match au3Builtin "@DesktopWidth"
sy match au3Builtin "@DocumentsCommonDir"
sy match au3Builtin "@Error"
sy match au3Builtin "@ExitCode"
sy match au3Builtin "@ExitMethod"
sy match au3Builtin "@Extended"
sy match au3Builtin "@Favorites\(Common\)\=Dir"
sy match au3Builtin "@GUI_CtrlId"
sy match au3Builtin "@GUI_CtrlHandle"
sy match au3Builtin "@GUI_WinHandle"
sy match au3Builtin "@HomeDrive"
sy match au3Builtin "@HomePath"
sy match au3Builtin "@HomeShare"
sy match au3Builtin "@HOUR"
sy match au3Builtin "@HotKeyPressed"
sy match au3Builtin "@InetGetActive"
sy match au3Builtin "@InetGetBytesRead"
sy match au3Builtin "@IPAddress[1234]"
sy match au3Builtin "@LF"
sy match au3Builtin "@Logon\(DNS\)\=Domain"
sy match au3Builtin "@LogonServer"
sy match au3Builtin "@MDAY"
sy match au3Builtin "@MIN"
sy match au3Builtin "@MON"
sy match au3Builtin "@MyDocumentsDir"
sy match au3Builtin "@NumParams"
sy match au3Builtin "@OSBuild"
sy match au3Builtin "@OSLang"
sy match au3Builtin "@OSServicePack"
sy match au3Builtin "@OSTYPE"
sy match au3Builtin "@OSVersion"
sy match au3Builtin "@ProcessorArch"
sy match au3Builtin "@ProgramFilesDir"
sy match au3Builtin "@Programs\(Common\)\=Dir"
sy match au3Builtin "@ScriptDir"
sy match au3Builtin "@ScriptFullPath"
sy match au3Builtin "@ScriptLineNumber"
sy match au3Builtin "@ScriptName"
sy match au3Builtin "@SEC"
sy match au3Builtin "@StartMenu\(Common\)\=Dir"
sy match au3Builtin "@Startup\(Common\)\=Dir"
sy match au3Builtin "@SW_DISABLE"
sy match au3Builtin "@SW_ENABLE"
sy match au3Builtin "@SW_HIDE" "alias for 0
sy match au3Builtin "@SW_LOCK"
sy match au3Builtin "@SW_MAXIMIZE" "alias for 3
sy match au3Builtin "@SW_MINIMIZE" "alias for 6
sy match au3Builtin "@SW_RESTORE" "alias for 9
sy match au3Builtin "@SW_SHOW" "alias for 5
sy match au3Builtin "@SW_SHOWDEFAULT"
sy match au3Builtin "@SW_SHOWMAXIMIZED"
sy match au3Builtin "@SW_SHOWMINIMIZED"
sy match au3Builtin "@SW_SHOWMINNOACTIVE"
sy match au3Builtin "@SW_SHOWNA"
sy match au3Builtin "@SW_SHOWNOACTIVATE"
sy match au3Builtin "@SW_SHOWNORMAL"
sy match au3Builtin "@SW_UNLOCK"
sy match au3Builtin "@SystemDir"
sy match au3Builtin "@TAB"
sy match au3Builtin "@TempDir"
sy match au3Builtin "@TRAY_ID"
sy match au3Builtin "@TrayIconFlashing"
sy match au3Builtin "@TrayIconVisible"
sy match au3Builtin "@UserProfileDir"
sy match au3Builtin "@UserName"
sy match au3Builtin "@WDAY"
sy match au3Builtin "@WindowsDir"
sy match au3Builtin "@WorkingDir"
sy match au3Builtin "@YDAY"
sy match au3Builtin "@YEAR"

"comments and commenting-out
sy match au3Comment ";.*"
"in this way also #ce alone will be highlighted
sy match au3CommDelimiter "^\s*#comments-start\>"
sy match au3CommDelimiter "^\s*#cs\>"
sy match au3CommDelimiter "^\s*#comments-end\>"
sy match au3CommDelimiter "^\s*#ce\>"
sy region au3Comment
	\ matchgroup=au3CommDelimiter
	\ start="^\s*#comments-start\>" start="^\s*#cs\>"
	\ end="^\s*#comments-end\>" end="^\s*#ce\>"

"one character operators
sy match au3Operator "[-+*/&^=<>][^-+*/&^=<>]"me=e-1
"two characters operators
sy match au3Operator "==[^=]"me=e-1
sy match au3Operator "<>"
sy match au3Operator "<="
sy match au3Operator ">="
sy match au3Operator "+="
sy match au3Operator "-="
sy match au3Operator "*="
sy match au3Operator "/="
sy match au3Operator "&="
sy keyword au3Operator NOT AND OR

sy match au3Paren "(\|)"
sy match au3Bracket "\[\|\]"
sy match au3Comma ","

"numbers must come after operator '-'
"decimal numbers without a dot
sy match au3Number "-\=\<\d\+\>"
"hexadecimal numbers without a dot
sy match au3Number "-\=\<0x\x\+\>"
"floating point number with dot (inside or at end)
sy match au3Number "-\=\<\d\+\.\d*\>"
"floating point number, starting with a dot
sy match au3Number "-\=\<\.\d\+\>"
"scientific notation numbers without dots
sy match au3Number "-\=\<\d\+e[-+]\=\d\+\>"
"scientific notation numbers with dots
sy match au3Number "-\=\<\(\(\d\+\.\d*\)\|\(\.\d\+\)\)\(e[-+]\=\d\+\)\=\>"

"string constants
"we want the escaped quotes marked in red
sy match au3DoubledSingles +''+ contained
sy match au3DoubledDoubles +""+ contained
"we want the continuation character marked in red
"(also at the top level, not just contained)
sy match au3Cont "_$"
"this was tricky!
"we use an oneline region, instead of a match, in order to use skip=
"matchgroup= so start and end quotes are not considered as au3Doubled
"contained
sy region au3String oneline matchgroup=au3Quote start=+"+
	\ end=+"+ end=+_\n\{1}.*"+
	\ contains=au3Cont,au3DoubledDoubles skip=+""+
sy region au3String oneline matchgroup=au3Quote start=+'+
	\ end=+'+ end=+_\n\{1}.*'+
	\ contains=au3Cont,au3DoubledSingles skip=+''+

sy match au3Variable "\$[a-z0-9_]\+"

" options - must be defined after au3Strings
sy match au3Option "\"CaretCoordMode\""
sy match au3Option "\"ColorMode\""
sy match au3Option "\"ExpandEnvStrings\""
sy match au3Option "\"ExpandVarStrings\""
sy match au3Option "\"FtpBinaryMode\""
sy match au3Option "\"GUICloseOnEsc\""
sy match au3Option "\"GUICoordMode\""
sy match au3Option "\"GUIDataSeparatorChar\""
sy match au3Option "\"GUIOnEventMode\""
sy match au3Option "\"GUIResizeMode\""
sy match au3Option "\"GUIEventCompatibilityMode\""
sy match au3Option "\"MouseClickDelay\""
sy match au3Option "\"MouseClickDownDelay\""
sy match au3Option "\"MouseClickDragDelay\""
sy match au3Option "\"MouseCoordMode\""
sy match au3Option "\"MustDeclareVars\""
sy match au3Option "\"OnExitFunc\""
sy match au3Option "\"PixelCoordMode\""
sy match au3Option "\"RunErrorsFatal\""
sy match au3Option "\"SendAttachMode\""
sy match au3Option "\"SendCapslockMode\""
sy match au3Option "\"SendKeyDelay\""
sy match au3Option "\"SendKeyDownDelay\""
sy match au3Option "\"TCPTimeout\""
sy match au3Option "\"TrayAutoPause\""
sy match au3Option "\"TrayIconDebug\""
sy match au3Option "\"TrayIconHide\""
sy match au3Option "\"TrayMenuMode\""
sy match au3Option "\"TrayOnEventMode\""
sy match au3Option "\"WinDetectHiddenText\""
sy match au3Option "\"WinSearchChildren\""
sy match au3Option "\"WinTextMatchMode\""
sy match au3Option "\"WinTitleMatchMode\""
sy match au3Option "\"WinWaitDelay\""

" Define the default highlighting.
" Unused colors: Underlined, Ignore, Error, Todo
  HiLink au3Function Statement  " yellow
  HiLink au3Keyword Statement
  HiLink au3Operator Statement
  HiLink au3Comment	Comment  " cyan (same as Identifier)
  HiLink au3Paren Comment
  HiLink au3Comma Comment
  HiLink au3Bracket Comment
  HiLink au3Number Constant " magenta
  HiLink au3String Constant
  HiLink au3Quote Constant
  HiLink au3Included Constant
  HiLink au3Cont Special  " red
  HiLink au3DoubledSingles Special
  HiLink au3DoubledDoubles Special
  HiLink au3CommDelimiter PreProc  " blue
  HiLink au3Include PreProc
  HiLink au3Variable Type  " green
  HiLink au3Builtin Type
  HiLink au3Option Type

  delcommand HiLink
  sy sync fromstart
