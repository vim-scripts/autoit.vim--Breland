" Vim syntax file

" Language:		AutoIt from www.autoitscript.com
" Maintainer:	Riccardo Casini <ric@libero.it>
" Last Change:	03/15/05 by Jared Breland <jbreland@legroom.net>
" 				updated for AutoIt 3.1.0

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
sy keyword au3Keyword dim global local redim
sy keyword au3Keyword if else elseif then endif
sy keyword au3Keyword select case endselect
sy keyword au3Keyword for to step next
sy keyword au3Keyword while wend
sy keyword au3Keyword do until
sy keyword au3Keyword continueloop exitloop
sy keyword au3Keyword exit

" inside script inclusion
sy match au3Included display contained "<[^>]*>"
sy match au3Include	display "^\s*#\s*include\>\s*["<]"
	\ contains=au3Included,au3String
sy match au3Include "^\s*#include-once\>"

" user-defined functions
sy keyword au3Keyword func byref endfunc return

" built-in functions
" environment management
sy keyword au3Function clipget clipput envget envset envupdate memgetstats
" file, directory, and disk management
sy keyword au3Function dircopy dircreate dirgetsize dirmove dirremove
sy keyword au3Function drivegetdrive drivegetfilesystem drivegetlabel
	\ drivegetserial drivegettype drivemapadd drivemapdel drivemapget
	\ drivesetlabel drivespacefree drivespacetotal drivestatus
sy keyword au3Function filechangedir fileclose filecopy filecreateshortcut
	\ filedelete fileexists filefindfirstfile filefindnextfile filegetattrib
	\ filegetlongname filegetshortcut filegetshortname filegetsize filegettime
	\ filegetversion fileinstall filemove fileopen fileopendialog fileread
	\ filereadline filerecycle filerecycleempty filesavedialog fileselectfolder
	\ filesetattrib filesettime filewrite filewriteline
sy keyword au3Function inidelete iniread iniwrite
" graphic and sound
sy keyword au3Function pixelchecksum pixelgetcolor pixelsearch
	\ soundplay soundsetwavevolume
" gui reference
sy keyword au3Function guicreate guidelete guictrlgetstate guictrlread
	\ guictrlrecvmsg guictrlsendmsg guictrlsendtodummy guigetcursorinfo
	\ guigetmsg guistartgroup guiswitch
sy keyword au3Function guictrlcreateavi guictrlcreatebutton
	\ guictrlcreatecheckbox guictrlcreatecombo guictrlcreatecontextmenu
	\ guictrlcreatedate guictrlcreatedummy guictrlcreateedit guictrlcreategroup
	\ guictrlcreateicon guictrlcreateinput guictrlcreatelabel guictrlcreatelist
	\ guictrlcreatelistview guictrlcreatelistviewitem guictrlcreatemenu
	\ guictrlcreatemenuitem guictrlcreatepic guictrlcreateprogress
	\ guictrlcreateradio guictrlcreateslider guictrlcreatetab
	\ guictrlcreatetabitem guictrlcreatetreeview guictrlcreatetreeviewitem
	\ guictrlcreateupdown guictrldelete
sy keyword au3Function guictrlsetbkcolor guictrlsetcolor guictrlsetcursor
	\ guictrlsetdata guictrlsetfont guictrlsetimage guictrlsetlimit
	\ guictrlsetonevent guictrlsetpos guictrlsetresizing guictrlsetstate
	\ guictrlsetstyle guictrlsettip
sy keyword au3Function guisetbkcolor guisetcoord guisetcursor guisetfont
	\ guisethelp guiseticon guisetonevent guisetstate
" keyboard control
sy keyword au3Function hotkeyset send send
" math
sy keyword au3Function abs acos asin atan bitand bitnot bitor bitshift bitxor
	\ cos exp log mod random round sin sqrt tan
" message boxes and dialogs
sy keyword au3Function inputbox msgbox progressoff progresson progressset
	\ splashimageon splashoff splashtexton tooltip traytip
" miscellaneous
sy keyword au3Function adlibdisable adlibenable autoitsetoption
	\ autoitwinsettitle blockinput break call cdtray consolewrite
	\ opt seterror setextended
" mouse control
sy keyword au3Function mouseclick mouseclickdrag mousedown mousegetcursor
	\ mousegetpos mousemove mouseup mousewheel
" network
sy keyword ftpsetproxy httpsetproxy inetget inetgetsize ping
" process management
sy keyword au3Function dllcall dllclose dllopen processclose processexists
	\ processsetpriority processlist processwait processwaitclose run runasset
	\ runwait shutdown
" registry management
sy keyword au3Function regdelete regenumkey regenumval regread regwrite
" string management
sy keyword au3Function stringaddcr stringformat stringinstr stringisalnum
	\ stringisalpha stringisascii stringisdigit stringisfloat stringisint
	\ stringislower stringisspace stringisupper stringisxdigit stringleft
	\ stringlen stringlower stringmid stringreplace stringright stringsplit
	\ stringstripcr stringstripws stringtrimleft stringtrimright stringupper
" timer and delay
sy keyword au3Function sleep timerinit timerdiff
" variables and conversions
sy keyword au3Function asc chr assign dec eval hex int isadmin isarray
	\ isdeclared isfloat isint isnumber isstring number string ubound
" window management
sy keyword au3Function controlclick controlcommand controldisable controlenable
	\ controlfocus controlgetfocus controlgethandle controlgetpos
	\ controlgettext controlhide controllistview controlmove controlsend
	\ controlsettext controlshow statusbargettext
sy keyword au3Function winactivate winactive winclose winexists wingetcaretpos
	\ wingetclasslist wingetclientsize wingethandle wingetpos wingetprocess
	\ wingetstate wingettext wingettitle winkill winlist winmenuselectitem
	\ winminimizeall winminimizeallundo winmove winsetontop winsetstate
	\ winsettitle winwait winwaitactive winwaitclose winwaitnotactive
" user defined functions
sy keyword au3Function _arrayadd _arraybinarysearch _arraycreate _arraydelete
	\ _arraydisplay _arrayinsert _arraymax _arraymaxindex _arraymin
	\ _arrayminindex _arraypop _arrayreverse _arraysort _arrayswap
	\ _arraytopclip _arraytostring _arraytrim
sy keyword au3Function _colorgetblue _colorgetgreen _colorgetred
sy keyword au3Function _dateadd _datedayofweek _datedaysinmonth _datediff
	\ _dateisleapyear _dateisvalid _datetimeformat _datetimesplit
	\ _datetodayofweek _datetodayvalue _datevaluetoday _now _nowcalc
	\ _nowcalcdate _nowdate _nowtime _tickstotime  _tickstoticks
sy keyword au3Function _filecountlines _filecreate _filereadtoarray
	\ _filewritelog _tempfile
sy keyword au3Function _getip _inetexplorercapable _inetmail
sy keyword au3Function _ceil _floor _mathcheckdiv _max _min
sy keyword au3Function _iif 
sy keyword au3Function _rundos
sy keyword au3Function _hextostring _stringencrypt _stringproper _stringrepeat
	\ _stringreverse _stringtohex
sy keyword au3Function _viclose _viexeccommand _vifindgpib _vigtl _viopen
	\ _visetattribute _visettimeout

" read-only macros
sy match au3Builtin "@AppData\(Common\)\=Dir"
sy match au3Builtin "@AutoItExe"
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
sy match au3Builtin "@Extended"
sy match au3Builtin "@Favorites\(Common\)\=Dir"
sy match au3Builtin "@GUI_CtrlId"
sy match au3Builtin "@GUI_CtrlHandle"
sy match au3Builtin "@GUI_WinHandle"
sy match au3Builtin "@HomeDrive"
sy match au3Builtin "@HomePath"
sy match au3Builtin "@HomeShare"
sy match au3Builtin "@HOUR"
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
sy match au3Builtin "@ProgramFilesDir"
sy match au3Builtin "@Programs\(Common\)\=Dir"
sy match au3Builtin "@ScriptDir"
sy match au3Builtin "@ScriptFullPath"
sy match au3Builtin "@ScriptName"
sy match au3Builtin "@SEC"
sy match au3Builtin "@StartMenu\(Common\)\=Dir"
sy match au3Builtin "@Startup\(Common\)\=Dir"
sy match au3Builtin "@SW_DISABLE"
sy match au3Builtin "@SW_ENABLE"
sy match au3Builtin "@SW_HIDE" "alias for 0
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
sy match au3Builtin "@SystemDir"
sy match au3Builtin "@TAB"
sy match au3Builtin "@TempDir"
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

  delcommand HiLink
  sy sync fromstart
