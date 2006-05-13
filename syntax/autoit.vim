" Vim syntax file

" Language:		AutoIt from www.autoitscript.com
" Maintainer:	Riccardo Casini <ric@libero.it>
" ChangeLog:	v1.3 05/13/06 by Jared Breland <jbreland@legroom.net>
" 					update for AutoIt 3.1.1.123-beta
" 					added Styles section
" 					added Constants section
" 					added Send Key section
" 					changed variable formatting to match PHP style
" 						(to better distinguish between user vars and built-ins)
"				v1.2 10/07/05 by Jared Breland <jbreland@legroom.net>
" 					update for AutoIt 3.1.1.78-beta
" 					added Options section
" 				v1.1 03/15/05 by Jared Breland <jbreland@legroom.net>
" 					updated for AutoIt 3.1.0

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
sy keyword au3Function FileChangeDir FileClose FileCopy FileCreateNTFSLink
	\ FileCreateShortcut FileDelete FileExists FileFindFirstFile
	\ FileFindNextFile FileGetAttrib FileGetLongName FileGetShortcut
	\ FileGetShortName FileGetSize FileGetTime FileGetVersion FileInstall
	\ FileMove FileOpen FileOpenDialog FileRead FileReadLine FileRecycle
	\ FileRecycleEmpty FileSaveDialog FileSelectFolder FileSetAttrib
	\ FileSetTime FileWrite FileWriteLine
sy keyword au3Function IniDelete IniRead IniReadSection IniReadSectionNames
	\ IniRenameSection IniWrite
sy keyword au3Function StderrRead StdinWrite StdoutRead
" graphic and sound
sy keyword au3Function Beep PixelChecksum PixelGetColor PixelSearch SoundPlay
	\ SoundSetWaveVolume
" gui reference
sy keyword au3Function GUICreate GUIDelete GUICtrlGetHandle GUICtrlGetState
	\ GUICtrlRead GUICtrlRecvMsg GUICtrlSendMsg GUICtrlSendToDummy
	\ GUIGetCursorInfo GUIGetMsg GUIRegisterMsg GUIStartGroup GUISwitch
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
sy keyword au3Function GUICtrlRegisterListViewSort GUICtrlSetBkColor
	\ GUICtrlSetColor GUICtrlSetCursor GUICtrlSetData GUICtrlSetFont
	\ GUICtrlSetGraphic GUICtrlSetImage GUICtrlSetLimit GUICtrlSetOnEvent
	\ GUICtrlSetPos GUICtrlSetResizing GUICtrlSetState GUICtrlSetStyle
	\ GUICtrlSetTip
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
	\ TCPSend TCPShutDown TCPStartup UDPBind UDPCloseSocket UDPOpen UDPRecv
	\ UDPSend UDPShutdown UDPStartup
" obj/com reference
sy keyword au3Function ObjCreate ObjEvent ObjGet ObjName
" process management
sy keyword au3Function DllCall DllClose DllOpen DllStructCreate DllStructGetData
	\ DllStructGetPtr DllStructGetSize DllStructSetData PluginClose PluginOpen
	\ ProcessClose ProcessExists ProcessSetPriority ProcessList ProcessWait
	\ ProcessWaitClose Run RunAsSet RunWait Shutdown
" registry management
sy keyword au3Function RegDelete RegEnumKey RegEnumVal RegRead RegWrite
" string management
sy keyword au3Function StringAddCR StringFormat StringInStr StringIsAlNum
	\ StringIsAlpha StringIsASCII StringIsDigit StringIsFloat StringIsInt
	\ StringIsLower StringIsSpace StringIsUpper StringIsXDigit StringLeft
	\ StringLen StringLower StringMid StringRegExp StringRegExpReplace
	\ StringReplace StringRight StringSplit StringStripCR StringStripWS
	\ StringTrimLeft StringTrimRight StringUpper
" timer and delay
sy keyword au3Function Sleep TimerInit TimerDiff
" tray
sy keyword au3Function TrayCreateItem TrayCreateMenu TrayItemDelete
	\ TrayItemGetHandle TrayItemGetState TrayItemGetText TrayItemSetOnEvent
	\ TrayItemSetState TrayItemSetText TrayGetMsg TraySetClick TraySetIcon
	\ TraySetOnEvent TraySetPauseIcon TraySetState TraySetToolTip TrayTip
" variables and conversions
sy keyword au3Function Asc Assign Binary Chr Dec Eval Hex HWnd Int IsAdmin
	\ IsArray IsBinaryString IsBool IsDeclared IsFloat IsHWnd IsInt IsKeyword
	\ IsNumber IsObj IsString Number String UBound
" window management
sy keyword au3Function ControlClick ControlCommand ControlDisable ControlEnable
	\ ControlFocus ControlGetFocus ControlGetHandle ControlGetPos
	\ ControlGetText ControlHide ControlListView ControlMove ControlSend
	\ ControlSetText ControlShow StatusBarGetText
sy keyword au3Function WinActivate WinActive WinClose WinExists WinFlash
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
	\ _DateToDayOfWeek _ToDayOfWeekISO _DateToDayValue _DayValueToDate _Now
	\ _NowCalc _NowCalcDate _NowDate _NowTime _TicksToTime  _TimeToTicks
	\ _WeekNumberISO
" file
sy keyword au3Function _FileCountLines _FileCreate _FileListToArray _FilePrint
	\ _FileReadToArray _FileWriteFromArray _FileWriteLog _FileWriteToLine
	\ _PathFull _PathMake _PathSplit _ReplaceStringInFile _TempFile
" guicombo
sy keyword au3Function _GUICtrlComboAddDir _GUICtrlComboAddString
	\ _GUICtrlComboAutoComplete _GUICtrlComboDeleteString
	\ _GUICtrlComboFindString _GUICtrlComboGetCount _GUICtrlComboGetCurSel
	\ _GUICtrlComboGetDroppedControlRect _GUICtrlComboGetDroppedState
	\ _GUICtrlComboGetDroppedWidth _GUICtrlComboGetEditSel
	\ _GUICtrlComboGetExtendedUI _GUICtrlComboGetHorizontalExtent
	\ _GUICtrlComboGetItemHeight _GUICtrlComboGetLBText
	\ _GUICtrlComboGetLBTextLen _GUICtrlComboGetList _GUICtrlComboGetLocale
	\ _GUICtrlComboGetMinVisible _GUICtrlComboGetTopIndex
	\ _GUICtrlComboInitStorage _GUICtrlComboInsertString _GUICtrlComboLimitText
	\ _GUICtrlComboResetContent _GUICtrlComboSelectString _GUICtrlComboSetCurSel
	\ _GUICtrlComboSetDroppedWidth _GUICtrlComboSetEditSel
	\ _GUICtrlComboSetExtendedUI _GUICtrlComboSetHorizontalExtent
	\ _GUICtrlComboSetItemHeight _GUICtrlComboSetMinVisible
	\ _GUICtrlComboSetTopIndex _GUICtrlComboShowDropDown
" guiedit
sy keyword au3Function _GUICtrlEditCanUndo _GUICtrlEditEmptyUndoBuffer
	\ _GuiCtrlEditFind _GUICtrlEditGetFirstVisibleLine _GUICtrlEditGetLineCount
	\ _GUICtrlEditGetModify _GUICtrlEditGetRECT _GUICtrlEditGetSel
	\ _GUICtrlEditLineFromChar _GUICtrlEditLineIndex _GUICtrlEditLineLength
	\ _GUICtrlEditLineScroll _GUICtrlEditReplaceSel _GUICtrlEditScroll
	\ _GUICtrlEditSetModify _GUICtrlEditSetRECT _GUICtrlEditSetSel
	\ _GUICtrlEditUndo
" guilist
sy keyword au3Function _GUICtrlListAddDir _GUICtrlListAddItem _GUICtrlListClear
	\ _GUICtrlListCount _GUICtrlListDeleteItem _GUICtrlListFindString
	\ _GUICtrlListGetAnchorIndex _GUICtrlListGetCaretIndex
	\ _GUICtrlListGetHorizontalExtent _GUICtrlListGetInfo
	\ _GUICtrlListGetItemRect _GUICtrlListGetLocale _GUICtrlListGetSelCount
	\ _GUICtrlListGetSelItems _GUICtrlListGetSelItemsText
	\ _GUICtrlListGetSelState _GUICtrlListGetText _GUICtrlListGetTextLen
	\ _GUICtrlListGetTopIndex _GUICtrlListInsertItem _GUICtrlListReplaceString
	\ _GUICtrlListSelectedIndex _GUICtrlListSelectIndex _GUICtrlListSelectString
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
	\ _GUICtrlListViewSetCheckState _GUICtrlListViewSetColumnHeaderText
	\ _GUICtrlListViewSetColumnOrder _GUICtrlListViewSetColumnWidth
	\ _GUICtrlListViewSetHotItem _GUICtrlListViewSetHoverTime
	\ _GUICtrlListViewSetItemCount _GUICtrlListViewSetItemSelState
	\ _GUICtrlListViewSetItemText _GUICtrlListViewSort
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
" guistatusbar
sy keyword au3Function _GuiCtrlStatusBarCreate _GuiCtrlStatusBarGetBorders
	\ _GuiCtrlStatusBarGetIcon _GuiCtrlStatusBarGetParts
	\ _GuiCtrlStatusBarGetRect _GuiCtrlStatusBarGetText
	\ _GuiCtrlStatusBarGetTextLength _GuiCtrlStatusBarGetTip
	\ _GuiCtrlStatusBarGetUnicode _GuiCtrlStatusBarResize
	\ _GuiCtrlStatusBarSetBKColor _GuiCtrlStatusBarSetIcon
	\ _GuiCtrlStatusBarSetMinHeight _GuiCtrlStatusBarSetSimple
	\ _GuiCtrlStatusBarSetText _GuiCtrlStatusBarSetTip
	\ _GuiCtrlStatusBarSetUnicode 
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
	\ _GUICtrlTreeViewGetState _GUICtrlTreeViewGetText
	\ _GUICtrlTreeViewGetTextColor _GUICtrlTreeViewItemGetTree
	\ _GUICtrlTreeViewInsertItem _GUICtrlTreeViewSetBkColor
	\ _GUICtrlTreeViewSetIcon _GUICtrlTreeViewSetIndent
	\ _GUICtrlTreeViewSetLineColor GUICtrlTreeViewSetState
	\ _GUICtrlTreeViewSetText _GUICtrlTreeViewSetTextColor
	\ _GUICtrlTreeViewSort
" inet
sy keyword au3Function _GetIP _INetExplorerCapable _INetGetSource _INetMail
	\ _INetSmtpMail
" math
sy keyword au3Function _Degree _MathCheckDiv _Max _Min _Radian
" miscellaneous
sy keyword au3Function _ChooseColor _ChooseFont _Iif _IsPressed _MouseTrap
	\ _Singleton
" process
sy keyword au3Function _ProcessGetName _ProcessGetPriority _RunDOS
" string
sy keyword au3Function _HexToString _StringEncrypt _StringInsert _StringProper
	\ _StringRepeat _StringReverse _StringToHex
" visa
sy keyword au3Function _viClose _viExecCommand _viFindGpib _viGpibBusReset
	\ _viGTL _viOpen _viSetAttribute _viSetTimeout

" read-only macros
sy match au3Builtin "@AppData\(Common\)\=Dir"
sy match au3Builtin "@AutoItExe"
sy match au3Builtin "@AutoItPID"
sy match au3Builtin "@AutoItVersion"
sy match au3Builtin "@CommonFilesDir"
sy match au3Builtin "@COM_EventObj"
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
sy match au3Builtin "@GUI_DragId"
sy match au3Builtin "@GUI_DragFile"
sy match au3Builtin "@GUI_DropId"
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
sy match au3Builtin "@SW_HIDE"
sy match au3Builtin "@SW_LOCK"
sy match au3Builtin "@SW_MAXIMIZE"
sy match au3Builtin "@SW_MINIMIZE"
sy match au3Builtin "@SW_RESTORE"
sy match au3Builtin "@SW_SHOW"
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

" send key list - must be defined before au3Strings
sy match au3Send "{!}" contained
sy match au3Send "{#}" contained
sy match au3Send "{+}" contained
sy match au3Send "{^}" contained
sy match au3Send "{{}" contained
sy match au3Send "{}}" contained
sy match au3Send "{SPACE}" contained
sy match au3Send "{ENTER}" contained
sy match au3Send "{ALT}" contained
sy match au3Send "{BACKSPACE}" contained
sy match au3Send "{BS}" contained
sy match au3Send "{DELETE}" contained
sy match au3Send "{DEL}" contained
sy match au3Send "{UP}" contained
sy match au3Send "{DOWN}" contained
sy match au3Send "{LEFT}" contained
sy match au3Send "{RIGHT}" contained
sy match au3Send "{HOME}" contained
sy match au3Send "{END}" contained
sy match au3Send "{ESCAPE}" contained
sy match au3Send "{ESC}" contained
sy match au3Send "{INSERT}" contained
sy match au3Send "{INS}" contained
sy match au3Send "{PGUP}" contained
sy match au3Send "{PGDN}" contained
sy match au3Send "{F1}" contained
sy match au3Send "{F2}" contained
sy match au3Send "{F3}" contained
sy match au3Send "{F4}" contained
sy match au3Send "{F5}" contained
sy match au3Send "{F6}" contained
sy match au3Send "{F7}" contained
sy match au3Send "{F8}" contained
sy match au3Send "{F9}" contained
sy match au3Send "{F10}" contained
sy match au3Send "{F11}" contained
sy match au3Send "{F12}" contained
sy match au3Send "{TAB}" contained
sy match au3Send "{PRINTSCREEN}" contained
sy match au3Send "{LWIN}" contained
sy match au3Send "{RWIN}" contained
sy match au3Send "{NUMLOCK}" contained
sy match au3Send "{CTRLBREAK}" contained
sy match au3Send "{PAUSE}" contained
sy match au3Send "{CAPSLOCK}" contained
sy match au3Send "{NUMPAD0}" contained
sy match au3Send "{NUMPAD1}" contained
sy match au3Send "{NUMPAD2}" contained
sy match au3Send "{NUMPAD3}" contained
sy match au3Send "{NUMPAD4}" contained
sy match au3Send "{NUMPAD5}" contained
sy match au3Send "{NUMPAD6}" contained
sy match au3Send "{NUMPAD7}" contained
sy match au3Send "{NUMPAD8}" contained
sy match au3Send "{NUMPAD9}" contained
sy match au3Send "{NUMPADMULT}" contained
sy match au3Send "{NUMPADADD}" contained
sy match au3Send "{NUMPADSUB}" contained
sy match au3Send "{NUMPADDIV}" contained
sy match au3Send "{NUMPADDOT}" contained
sy match au3Send "{NUMPADENTER}" contained
sy match au3Send "{APPSKEY}" contained
sy match au3Send "{LALT}" contained
sy match au3Send "{RALT}" contained
sy match au3Send "{LCTRL}" contained
sy match au3Send "{RCTRL}" contained
sy match au3Send "{LSHIFT}" contained
sy match au3Send "{RSHIFT}" contained
sy match au3Send "{SLEEP}" contained
sy match au3Send "{ALTDOWN}" contained
sy match au3Send "{SHIFTDOWN}" contained
sy match au3Send "{CTRLDOWN}" contained
sy match au3Send "{LWINDOWN}" contained
sy match au3Send "{RWINDOWN}" contained
sy match au3Send "{ASC \d\d\d\d}" contained
sy match au3Send "{BROWSER_BACK}" contained
sy match au3Send "{BROWSER_FORWARD}" contained
sy match au3Send "{BROWSER_REFRESH}" contained
sy match au3Send "{BROWSER_STOP}" contained
sy match au3Send "{BROWSER_SEARCH}" contained
sy match au3Send "{BROWSER_FAVORITES}" contained
sy match au3Send "{BROWSER_HOME}" contained
sy match au3Send "{VOLUME_MUTE}" contained
sy match au3Send "{VOLUME_DOWN}" contained
sy match au3Send "{VOLUME_UP}" contained
sy match au3Send "{MEDIA_NEXT}" contained
sy match au3Send "{MEDIA_PREV}" contained
sy match au3Send "{MEDIA_STOP}" contained
sy match au3Send "{MEDIA_PLAY_PAUSE}" contained
sy match au3Send "{LAUNCH_MAIL}" contained
sy match au3Send "{LAUNCH_MEDIA}" contained

"this was tricky!
"we use an oneline region, instead of a match, in order to use skip=
"matchgroup= so start and end quotes are not considered as au3Doubled
"contained
sy region au3String oneline contains=au3Send matchgroup=au3Quote start=+"+
	\ end=+"+ end=+_\n\{1}.*"+
	\ contains=au3Cont,au3DoubledDoubles skip=+""+
sy region au3String oneline matchgroup=au3Quote start=+'+
	\ end=+'+ end=+_\n\{1}.*'+
	\ contains=au3Cont,au3DoubledSingles skip=+''+

sy match au3VarSelector "\$"	contained display
sy match au3Variable "$\w\+" contains=au3VarSelector

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

" styles - must be defined after au3Variable
" common
sy match au3Style "\$WS_BORDER"
sy match au3Style "\$WS_POPUP"
sy match au3Style "\$WS_CAPTION"
sy match au3Style "\$WS_CLIPCHILDREN"
sy match au3Style "\$WS_CLIPSIBLINGS"
sy match au3Style "\$WS_DISABLED"
sy match au3Style "\$WS_DLGFRAME"
sy match au3Style "\$WS_HSCROLL"
sy match au3Style "\$WS_MAXIMIZE"
sy match au3Style "\$WS_MAXIMIZEBOX"
sy match au3Style "\$WS_MINIMIZE"
sy match au3Style "\$WS_MINIMIZEBOX"
sy match au3Style "\$WS_OVERLAPPED"
sy match au3Style "\$WS_OVERLAPPEDWINDOW"
sy match au3Style "\$WS_POPUPWINDOW"
sy match au3Style "\$WS_SIZEBOX"
sy match au3Style "\$WS_SYSMENU"
sy match au3Style "\$WS_THICKFRAME"
sy match au3Style "\$WS_VSCROLL"
sy match au3Style "\$WS_VISIBLE"
sy match au3Style "\$WS_CHILD"
sy match au3Style "\$WS_GROUP"
sy match au3Style "\$WS_TABSTOP"
sy match au3Style "\$DS_MODALFRAME"
sy match au3Style "\$DS_SETFOREGROUND"
sy match au3Style "\$DS_CONTEXTHELP"
" common extended
sy match au3Style "\$WS_EX_ACCEPTFILES"
sy match au3Style "\$WS_EX_APPWINDOW"
sy match au3Style "\$WS_EX_CLIENTEDGE"
sy match au3Style "\$WS_EX_CONTEXTHELP"
sy match au3Style "\$WS_EX_DLGMODALFRAME"
sy match au3Style "\$WS_EX_MDICHILD"
sy match au3Style "\$WS_EX_OVERLAPPEDWINDOW"
sy match au3Style "\$WS_EX_STATICEDGE"
sy match au3Style "\$WS_EX_TOPMOST"
sy match au3Style "\$WS_EX_TRANSPARENT"
sy match au3Style "\$WS_EX_TOOLWINDOW"
sy match au3Style "\$WS_EX_WINDOWEDGE"
sy match au3Style "\$WS_EX_LAYERED"
sy match au3Style "\$GUI_WS_EX_PARENTDRAG"
" checkbox
sy match au3Style "\$BS_3STATE"
sy match au3Style "\$BS_AUTO3STATE"
sy match au3Style "\$BS_AUTOCHECKBOX"
sy match au3Style "\$BS_CHECKBOX"
sy match au3Style "\$BS_LEFT"
sy match au3Style "\$BS_PUSHLIKE"
sy match au3Style "\$BS_RIGHT"
sy match au3Style "\$BS_RIGHTBUTTON"
sy match au3Style "\$BS_GROUPBOX"
sy match au3Style "\$BS_AUTORADIOBUTTON"
" push button
sy match au3Style "\$BS_BOTTOM"
sy match au3Style "\$BS_CENTER"
sy match au3Style "\$BS_DEFPUSHBUTTON"
sy match au3Style "\$BS_MULTILINE"
sy match au3Style "\$BS_TOP"
sy match au3Style "\$BS_VCENTER"
sy match au3Style "\$BS_ICON"
sy match au3Style "\$BS_BITMAP"
sy match au3Style "\$BS_FLAT"
" combo
sy match au3Style "\$CBS_AUTOHSCROLL"
sy match au3Style "\$CBS_DISABLENOSCROLL"
sy match au3Style "\$CBS_DROPDOWN"
sy match au3Style "\$CBS_DROPDOWNLIST"
sy match au3Style "\$CBS_LOWERCASE"
sy match au3Style "\$CBS_NOINTEGRALHEIGHT"
sy match au3Style "\$CBS_OEMCONVERT"
sy match au3Style "\$CBS_SIMPLE"
sy match au3Style "\$CBS_SORT"
sy match au3Style "\$CBS_UPPERCASE"
" list
sy match au3Style "\$LBS_DISABLENOSCROLL"
sy match au3Style "\$LBS_NOINTEGRALHEIGHT"
sy match au3Style "\$LBS_NOSEL"
sy match au3Style "\$LBS_NOTIFY"
sy match au3Style "\$LBS_SORT"
sy match au3Style "\$LBS_STANDARD"
sy match au3Style "\$LBS_USETABSTOPS"
" edit/input
sy match au3Style "\$ES_AUTOHSCROLL"
sy match au3Style "\$ES_AUTOVSCROLL"
sy match au3Style "\$ES_CENTER"
sy match au3Style "\$ES_LOWERCASE"
sy match au3Style "\$ES_NOHIDESEL"
sy match au3Style "\$ES_NUMBER"
sy match au3Style "\$ES_OEMCONVERT"
sy match au3Style "\$ES_MULTILINE"
sy match au3Style "\$ES_PASSWORD"
sy match au3Style "\$ES_READONLY"
sy match au3Style "\$ES_RIGHT"
sy match au3Style "\$ES_UPPERCASE"
sy match au3Style "\$ES_WANTRETURN"
" progress bar
sy match au3Style "\$PBS_SMOOTH"
sy match au3Style "\$PBS_VERTICAL"
" up-down
sy match au3Style "\$UDS_ALIGNLEFT"
sy match au3Style "\$UDS_ALIGNRIGHT"
sy match au3Style "\$UDS_ARROWKEYS"
sy match au3Style "\$UDS_HORZ"
sy match au3Style "\$UDS_NOTHOUSANDS"
sy match au3Style "\$UDS_WRAP"
" label/static
sy match au3Style "\$SS_BLACKFRAME"
sy match au3Style "\$SS_BLACKRECT"
sy match au3Style "\$SS_CENTER"
sy match au3Style "\$SS_CENTERIMAGE"
sy match au3Style "\$SS_ETCHEDFRAME"
sy match au3Style "\$SS_ETCHEDHORZ"
sy match au3Style "\$SS_ETCHEDVERT"
sy match au3Style "\$SS_GRAYFRAME"
sy match au3Style "\$SS_GRAYRECT"
sy match au3Style "\$SS_LEFT"
sy match au3Style "\$SS_LEFTNOWORDWRAP"
sy match au3Style "\$SS_NOPREFIX"
sy match au3Style "\$SS_NOTIFY"
sy match au3Style "\$SS_RIGHT"
sy match au3Style "\$SS_RIGHTJUST"
sy match au3Style "\$SS_SIMPLE"
sy match au3Style "\$SS_SUNKEN"
sy match au3Style "\$SS_WHITEFRAME"
sy match au3Style "\$SS_WHITERECT"
" tab
sy match au3Style "\$TCS_SCROLLOPPOSITE"
sy match au3Style "\$TCS_BOTTOM"
sy match au3Style "\$TCS_RIGHT"
sy match au3Style "\$TCS_MULTISELECT"
sy match au3Style "\$TCS_FLATBUTTONS"
sy match au3Style "\$TCS_FORCEICONLEFT"
sy match au3Style "\$TCS_FORCELABELLEFT"
sy match au3Style "\$TCS_HOTTRACK"
sy match au3Style "\$TCS_VERTICAL"
sy match au3Style "\$TCS_TABS"
sy match au3Style "\$TCS_BUTTONS"
sy match au3Style "\$TCS_SINGLELINE"
sy match au3Style "\$TCS_MULTILINE"
sy match au3Style "\$TCS_RIGHTJUSTIFY"
sy match au3Style "\$TCS_FIXEDWIDTH"
sy match au3Style "\$TCS_RAGGEDRIGHT"
sy match au3Style "\$TCS_FOCUSONBUTTONDOWN"
sy match au3Style "\$TCS_OWNERDRAWFIXED"
sy match au3Style "\$TCS_TOOLTIPS"
sy match au3Style "\$TCS_FOCUSNEVER"
" avi clip
sy match au3Style "\$ACS_AUTOPLAY"
sy match au3Style "\$ACS_CENTER"
sy match au3Style "\$ACS_TRANSPARENT"
sy match au3Style "\$ACS_NONTRANSPARENT"
" date
sy match au3Style "\$DTS_UPDOWN"
sy match au3Style "\$DTS_SHOWNONE"
sy match au3Style "\$DTS_LONGDATEFORMAT"
sy match au3Style "\$DTS_TIMEFORMAT"
sy match au3Style "\$DTS_RIGHTALIGN"
sy match au3Style "\$DTS_SHORTDATEFORMAT"
" monthcal
sy match au3Style "\$MCS_NOTODAY"
sy match au3Style "\$MCS_NOTODAYCIRCLE"
sy match au3Style "\$MCS_WEEKNUMBERS"
" treeview
sy match au3Style "\$TVS_HASBUTTONS"
sy match au3Style "\$TVS_HASLINES"
sy match au3Style "\$TVS_LINESATROOT"
sy match au3Style "\$TVS_DISABLEDRAGDROP"
sy match au3Style "\$TVS_SHOWSELALWAYS"
sy match au3Style "\$TVS_RTLREADING"
sy match au3Style "\$TVS_NOTOOLTIPS"
sy match au3Style "\$TVS_CHECKBOXES"
sy match au3Style "\$TVS_TRACKSELECT"
sy match au3Style "\$TVS_SINGLEEXPAND"
sy match au3Style "\$TVS_FULLROWSELECT"
sy match au3Style "\$TVS_NOSCROLL"
sy match au3Style "\$TVS_NONEVENHEIGHT"
" slider
sy match au3Style "\$TBS_AUTOTICKS"
sy match au3Style "\$TBS_BOTH"
sy match au3Style "\$TBS_BOTTOM"
sy match au3Style "\$TBS_HORZ"
sy match au3Style "\$TBS_VERT"
sy match au3Style "\$TBS_NOTHUMB"
sy match au3Style "\$TBS_NOTICKS"
sy match au3Style "\$TBS_LEFT"
sy match au3Style "\$TBS_RIGHT"
sy match au3Style "\$TBS_TOP"
" listview
sy match au3Style "\$LVS_ICON"
sy match au3Style "\$LVS_REPORT"
sy match au3Style "\$LVS_SMALLICON"
sy match au3Style "\$LVS_LIST"
sy match au3Style "\$LVS_EDITLABELS"
sy match au3Style "\$LVS_NOCOLUMNHEADER"
sy match au3Style "\$LVS_NOSORTHEADER"
sy match au3Style "\$LVS_SINGLESEL"
sy match au3Style "\$LVS_SHOWSELALWAYS"
sy match au3Style "\$LVS_SORTASCENDING"
sy match au3Style "\$LVS_SORTDESCENDING"
" listview extended
sy match au3Style "\$LVS_EX_FULLROWSELECT"
sy match au3Style "\$LVS_EX_GRIDLINES"
sy match au3Style "\$LVS_EX_HEADERDRAGDROP"
sy match au3Style "\$LVS_EX_TRACKSELECT"
sy match au3Style "\$LVS_EX_CHECKBOXES"
sy match au3Style "\$LVS_EX_BORDERSELECT"
sy match au3Style "\$LVS_EX_DOUBLEBUFFER"
sy match au3Style "\$LVS_EX_FLATSB"
sy match au3Style "\$LVS_EX_MULTIWORKAREAS"
sy match au3Style "\$LVS_EX_SNAPTOGRID"
sy match au3Style "\$LVS_EX_SUBITEMIMAGES"

" constants - must be defined after au3Variable - excludes styles
" constants - autoit options
sy match au3Const "\$OPT_COORDSRELATIVE"
sy match au3Const "\$OPT_COORDSABSOLUTE"
sy match au3Const "\$OPT_COORDSCLIENT"
sy match au3Const "\$OPT_ERRORSILENT"
sy match au3Const "\$OPT_ERRORFATAL"
sy match au3Const "\$OPT_CAPSNOSTORE"
sy match au3Const "\$OPT_CAPSSTORE"
sy match au3Const "\$OPT_MATCHSTART"
sy match au3Const "\$OPT_MATCHANY"
sy match au3Const "\$OPT_MATCHEXACT"
sy match au3Const "\$OPT_MATCHADVANCED"
" constants - file
sy match au3Const "\$FC_NOOVERWRITE"
sy match au3Const "\$FC_OVERWRITE"
sy match au3Const "\$FT_MODIFIED"
sy match au3Const "\$FT_CREATED"
sy match au3Const "\$FT_ACCESSED"
sy match au3Const "\$FO_READ"
sy match au3Const "\$FO_APPEND"
sy match au3Const "\$FO_OVERWRITE"
sy match au3Const "\$EOF"
sy match au3Const "\$FD_FILEMUSTEXIST"
sy match au3Const "\$FD_PATHMUSTEXIST"
sy match au3Const "\$FD_MULTISELECT"
sy match au3Const "\$FD_PROMPTCREATENEW"
sy match au3Const "\$FD_PROMPTOVERWRITE"
" constants - keyboard
sy match au3Const "\$KB_SENDSPECIAL"
sy match au3Const "\$KB_SENDRAW"
sy match au3Const "\$KB_CAPSOFF"
sy match au3Const "\$KB_CAPSON"
" constants - message box
sy match au3Const "\$MB_OK"
sy match au3Const "\$MB_OKCANCEL"
sy match au3Const "\$MB_ABORTRETRYIGNORE"
sy match au3Const "\$MB_YESNOCANCEL"
sy match au3Const "\$MB_YESNO"
sy match au3Const "\$MB_RETRYCANCEL"
sy match au3Const "\$MB_ICONHAND"
sy match au3Const "\$MB_ICONQUESTION"
sy match au3Const "\$MB_ICONEXCLAMATION"
sy match au3Const "\$MB_ICONASTERISK"
sy match au3Const "\$MB_DEFBUTTON1"
sy match au3Const "\$MB_DEFBUTTON2"
sy match au3Const "\$MB_DEFBUTTON3"
sy match au3Const "\$MB_APPLMODAL"
sy match au3Const "\$MB_SYSTEMMODAL"
sy match au3Const "\$MB_TASKMODAL"
sy match au3Const "\$MB_TOPMOST"
sy match au3Const "\$MB_RIGHTJUSTIFIED"
sy match au3Const "\$IDTIMEOUT"
sy match au3Const "\$IDOK"
sy match au3Const "\$IDCANCEL"
sy match au3Const "\$IDABORT"
sy match au3Const "\$IDRETRY"
sy match au3Const "\$IDIGNORE"
sy match au3Const "\$IDYES"
sy match au3Const "\$IDNO"
sy match au3Const "\$IDTRYAGAIN"
sy match au3Const "\$IDCONTINUE"
" constants - progress and splash
sy match au3Const "\$DLG_NOTITLE"
sy match au3Const "\$DLG_NOTONTOP"
sy match au3Const "\$DLG_TEXTLEFT"
sy match au3Const "\$DLG_TEXTRIGHT"
sy match au3Const "\$DLG_MOVEABLE"
sy match au3Const "\$DLG_TEXTVCENTER"
" constants - tray tip
sy match au3Const "\$TIP_ICONNONE"
sy match au3Const "\$TIP_ICONASTERISK"
sy match au3Const "\$TIP_ICONEXCLAMATION"
sy match au3Const "\$TIP_ICONHAND"
sy match au3Const "\$TIP_NOSOUND"
" constants - mouse
sy match au3Const "\$IDC_UNKNOWN"
sy match au3Const "\$IDC_APPSTARTING"
sy match au3Const "\$IDC_ARROW"
sy match au3Const "\$IDC_CROSS"
sy match au3Const "\$IDC_HELP"
sy match au3Const "\$IDC_IBEAM"
sy match au3Const "\$IDC_ICON"
sy match au3Const "\$IDC_NO"
sy match au3Const "\$IDC_SIZE"
sy match au3Const "\$IDC_SIZEALL"
sy match au3Const "\$IDC_SIZENESW"
sy match au3Const "\$IDC_SIZENS"
sy match au3Const "\$IDC_SIZENWSE"
sy match au3Const "\$IDC_SIZEWE"
sy match au3Const "\$IDC_UPARROW"
sy match au3Const "\$IDC_WAIT"
" constants - process
sy match au3Const "\$SD_LOGOFF"
sy match au3Const "\$SD_SHUTDOWN"
sy match au3Const "\$SD_REBOOT"
sy match au3Const "\$SD_FORCE"
sy match au3Const "\$SD_POWERDOWN"
" constants - string
sy match au3Const "\$STR_NOCASESENSE"
sy match au3Const "\$STR_CASESENSE"
sy match au3Const "\STR_STRIPLEADING"
sy match au3Const "\$STR_STRIPTRAILING"
sy match au3Const "\$STR_STRIPSPACES"
sy match au3Const "\$STR_STRIPALL"
" constants - tray
sy match au3Const "\$TRAY_ITEM_EXIT"
sy match au3Const "\$TRAY_ITEM_PAUSE"
sy match au3Const "\$TRAY_ITEM_FIRST"
sy match au3Const "\$TRAY_CHECKED"
sy match au3Const "\$TRAY_UNCHECKED"
sy match au3Const "\$TRAY_ENABLE"
sy match au3Const "\$TRAY_DISABLE"
sy match au3Const "\$TRAY_FOCUS"
sy match au3Const "\$TRAY_DEFAULT"
sy match au3Const "\$TRAY_EVENT_SHOWICON"
sy match au3Const "\$TRAY_EVENT_HIDEICON"
sy match au3Const "\$TRAY_EVENT_FLASHICON"
sy match au3Const "\$TRAY_EVENT_NOFLASHICON"
sy match au3Const "\$TRAY_EVENT_PRIMARYDOWN"
sy match au3Const "\$TRAY_EVENT_PRIMARYUP"
sy match au3Const "\$TRAY_EVENT_SECONDARYDOWN"
sy match au3Const "\$TRAY_EVENT_SECONDARYUP"
sy match au3Const "\$TRAY_EVENT_MOUSEOVER"
sy match au3Const "\$TRAY_EVENT_MOUSEOUT"
sy match au3Const "\$TRAY_EVENT_PRIMARYDOUBLE"
sy match au3Const "\$TRAY_EVENT_SECONDARYDOUBLE"
" constants - stdio
sy match au3Const "\$STDIN_CHILD"
sy match au3Const "\$STDOUT_CHILD"
sy match au3Const "\$STDERR_CHILD"
" constants - color
sy match au3Const "\$COLOR_BLACK"
sy match au3Const "\$COLOR_SILVER"
sy match au3Const "\$COLOR_GRAY"
sy match au3Const "\$COLOR_WHITE"
sy match au3Const "\$COLOR_MAROON"
sy match au3Const "\$COLOR_RED"
sy match au3Const "\$COLOR_PURPLE"
sy match au3Const "\$COLOR_FUCHSIA"
sy match au3Const "\$COLOR_GREEN"
sy match au3Const "\$COLOR_LIME"
sy match au3Const "\$COLOR_OLIVE"
sy match au3Const "\$COLOR_YELLOW"
sy match au3Const "\$COLOR_NAVY"
sy match au3Const "\$COLOR_BLUE"
sy match au3Const "\$COLOR_TEAL"
sy match au3Const "\$COLOR_AQUA"
" constants - reg value type
sy match au3Const "\$REG_NONE"
sy match au3Const "\$REG_SZ"
sy match au3Const "\$REG_EXPAND_SZ"
sy match au3Const "\$REG_BINARY"
sy match au3Const "\$REG_DWORD"
sy match au3Const "\$REG_DWORD_BIG_ENDIAN"
sy match au3Const "\$REG_LINK"
sy match au3Const "\$REG_MULTI_SZ"
sy match au3Const "\$REG_RESOURCE_LIST"
sy match au3Const "\$REG_FULL_RESOURCE_DESCRIPTOR"
sy match au3Const "\$REG_RESOURCE_REQUIREMENTS_LIST"
" guiconstants - events and messages
sy match au3Const "\$GUI_EVENT_CLOSE"
sy match au3Const "\$GUI_EVENT_MINIMIZE"
sy match au3Const "\$GUI_EVENT_RESTORE"
sy match au3Const "\$GUI_EVENT_MAXIMIZE"
sy match au3Const "\$GUI_EVENT_PRIMARYDOWN"
sy match au3Const "\$GUI_EVENT_PRIMARYUP"
sy match au3Const "\$GUI_EVENT_SECONDARYDOWN"
sy match au3Const "\$GUI_EVENT_SECONDARYUP"
sy match au3Const "\$GUI_EVENT_MOUSEMOVE"
sy match au3Const "\$GUI_EVENT_RESIZED"
sy match au3Const "\$GUI_EVENT_DROPPED"
sy match au3Const "\$GUI_RUNDEFMSG"
" guiconstants - state
sy match au3Const "\$GUI_AVISTOP"
sy match au3Const "\$GUI_AVISTART"
sy match au3Const "\$GUI_AVICLOSE"
sy match au3Const "\$GUI_CHECKED"
sy match au3Const "\$GUI_INDETERMINATE"
sy match au3Const "\$GUI_UNCHECKED"
sy match au3Const "\$GUI_DROPACCEPTED"
sy match au3Const "\$GUI_ACCEPTFILES"
sy match au3Const "\$GUI_SHOW"
sy match au3Const "\$GUI_HIDE"
sy match au3Const "\$GUI_ENABLE"
sy match au3Const "\$GUI_DISABLE"
sy match au3Const "\$GUI_FOCUS"
sy match au3Const "\$GUI_DEFBUTTON"
sy match au3Const "\$GUI_EXPAND"
sy match au3Const "\$GUI_ONTOP"
" guiconstants - font
sy match au3Const "\$GUI_FONTITALIC"
sy match au3Const "\$GUI_FONTUNDER"
sy match au3Const "\$GUI_FONTSTRIKE"
" guiconstants - resizing
sy match au3Const "\$GUI_DOCKAUTO"
sy match au3Const "\$GUI_DOCKLEFT"
sy match au3Const "\$GUI_DOCKRIGHT"
sy match au3Const "\$GUI_DOCKHCENTER"
sy match au3Const "\$GUI_DOCKTOP"
sy match au3Const "\$GUI_DOCKBOTTOM"
sy match au3Const "\$GUI_DOCKVCENTER"
sy match au3Const "\$GUI_DOCKWIDTH"
sy match au3Const "\$GUI_DOCKHEIGHT"
sy match au3Const "\$GUI_DOCKSIZE"
sy match au3Const "\$GUI_DOCKMENUBAR"
sy match au3Const "\$GUI_DOCKSTATEBAR"
sy match au3Const "\$GUI_DOCKALL"
sy match au3Const "\$GUI_DOCKBORDERS"
" guiconstants - graphic
sy match au3Const "\$GUI_GR_CLOSE"
sy match au3Const "\$GUI_GR_LINE"
sy match au3Const "\$GUI_GR_BEZIER"
sy match au3Const "\$GUI_GR_MOVE"
sy match au3Const "\$GUI_GR_COLOR"
sy match au3Const "\$GUI_GR_RECT"
sy match au3Const "\$GUI_GR_ELLIPSE"
sy match au3Const "\$GUI_GR_PIE"
sy match au3Const "\$GUI_GR_DOT"
sy match au3Const "\$GUI_GR_PIXEL"
sy match au3Const "\$GUI_GR_HINT"
sy match au3Const "\$GUI_GR_REFRESH"
sy match au3Const "\$GUI_GR_PENSIZE"
sy match au3Const "\$GUI_GR_NOBKCOLOR"
" guiconstants - control default styles
sy match au3Const "\$GUI_SS_DEFAULT_AVI"
sy match au3Const "\$GUI_SS_DEFAULT_BUTTON"
sy match au3Const "\$GUI_SS_DEFAULT_CHECKBOX"
sy match au3Const "\$GUI_SS_DEFAULT_COMBO"
sy match au3Const "\$GUI_SS_DEFAULT_DATE"
sy match au3Const "\$GUI_SS_DEFAULT_EDIT"
sy match au3Const "\$GUI_SS_DEFAULT_GRAPHIC"
sy match au3Const "\$GUI_SS_DEFAULT_GROUP"
sy match au3Const "\$GUI_SS_DEFAULT_ICON"
sy match au3Const "\$GUI_SS_DEFAULT_INPUT"
sy match au3Const "\$GUI_SS_DEFAULT_LABEL"
sy match au3Const "\$GUI_SS_DEFAULT_LIST"
sy match au3Const "\$GUI_SS_DEFAULT_LISTVIEW"
sy match au3Const "\$GUI_SS_DEFAULT_MONTHCAL"
sy match au3Const "\$GUI_SS_DEFAULT_PIC"
sy match au3Const "\$GUI_SS_DEFAULT_PROGRESS"
sy match au3Const "\$GUI_SS_DEFAULT_RADIO"
sy match au3Const "\$GUI_SS_DEFAULT_SLIDER"
sy match au3Const "\$GUI_SS_DEFAULT_TAB"
sy match au3Const "\$GUI_SS_DEFAULT_TREEVIEW"
sy match au3Const "\$GUI_SS_DEFAULT_UPDOWN"
sy match au3Const "\$GUI_SS_DEFAULT_GUI"
" guiconstants - background color special flags
sy match au3Const "\$GUI_BKCOLOR_DEFAULT"
sy match au3Const "\$GUI_BKCOLOR_TRANSPARENT"

" registry constants
sy match au3Const "\"REG_BINARY\""
sy match au3Const "\"REG_SZ\""
sy match au3Const "\"REG_MULTI_SZ\""
sy match au3Const "\"REG_EXPAND_SZ\""
sy match au3Const "\"REG_DWORD\""


" Define the default highlighting.
" Unused colors: Underlined, Ignore, Error, Todo
  HiLink au3Function Statement  " yellow/yellow
  HiLink au3Keyword Statement
  HiLink au3Operator Operator
  HiLink au3VarSelector Operator
  HiLink au3Comment	Comment  " cyan/blue
  HiLink au3Paren Comment
  HiLink au3Comma Comment
  HiLink au3Bracket Comment
  HiLink au3Number Constant " magenta/red
  HiLink au3String Constant
  HiLink au3Quote Constant
  HiLink au3Included Constant
  HiLink au3Cont Special  " red/orange
  HiLink au3DoubledSingles Special
  HiLink au3DoubledDoubles Special
  HiLink au3CommDelimiter PreProc  " blue/magenta
  HiLink au3Include PreProc
  HiLink au3Variable Identifier  " cyan/cyan
  HiLink au3Builtin Type  " green/green
  HiLink au3Option Type
  HiLink au3Style Type
  HiLink au3Const Type
  HiLink au3Send Type

  delcommand HiLink
  sy sync fromstart
