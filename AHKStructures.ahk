define(ByRef DATA,TYPE){
	static _types_:="UCHAR_MAX,LONG_OPERATION_INIT"
	global NULL:=0,FAIL:=0,CHAR_BIT:=8,CHAR_MAX:=127,CHAR_MIN:=0,INT_MAX:=32767,INT_MIN:=-32767,LONG_MAX:=2147483647,LONG_MIN:=-2147483647,MB_LEN_MAX:=1
	,SCHAR_MAX:=127,SCHAR_MIN:=-127,SHRT_MAX:=32767,SHRT_MIN:=-32767,UCHAR_MAX:=255,UINT_MAX:=65535,ULONG_MAX:=4294967295,USHRT_MAX:=65535
	; AHK+Windows data types
	static PTR:=A_PtrSize,UPTR:=A_PtrSize,SHORT:=2,USHORT:=2,INT:=4,UINT:=4,INT64:=8,UINT64:=8,DOUBLE:=8,FLOAT:=4,CHAR:=1,UCHAR:=1,VOID:=A_PtrSize
    ,TBYTE:=A_IsUnicode?2:1,TCHAR:=A_IsUnicode?2:1,HALF_PTR:=A_PtrSize=8?4:2,UHALF_PTR:=A_PtrSize=8?4:2,INT32:=4,LONG:=4,LONG32:=4,LONGLONG:=8
    ,LONG64:=8,USN:=8,HFILE:=A_PtrSize,HRESULT:=A_PtrSize,INT_PTR:=A_PtrSize,LONG_PTR:=A_PtrSize,POINTER_64:=A_PtrSize,POINTER_SIGNED:=A_PtrSize
    ,BOOL:=4,SSIZE_T:=A_PtrSize,WPARAM:=A_PtrSize,BOOLEAN:=1,BYTE:=1,COLORREF:=4,DWORD:=4,DWORD32:=4,LCID:=4,LCTYPE:=4,LGRPID:=4,LRESULT:=4,PBOOL:=4
    ,PBOOLEAN:=4,PBYTE:=4,PCHAR:=4,PCSTR:=4,PCTSTR:=4,PCWSTR:=4,PDWORD:=4,PDWORDLONG:=4,PDWORD_PTR:=4,PDWORD32:=4,PDWORD64:=4,PFLOAT:=4,PHALF_PTR:=4
    ,UINT32:=4,ULONG:=4,ULONG32:=4,DWORDLONG:=8,DWORD64:=8,ULONGLONG:=8,ULONG64:=8,DWORD_PTR:=A_PtrSize,HACCEL:=A_PtrSize,HANDLE:=A_PtrSize
    ,HBITMAP:=A_PtrSize,HBRUSH:=A_PtrSize,HCOLORSPACE:=A_PtrSize,HCONV:=A_PtrSize,HCONVLIST:=A_PtrSize,HCURSOR:=A_PtrSize,HDC:=A_PtrSize
    ,HDDEDATA:=A_PtrSize,HDESK:=A_PtrSize,HDROP:=A_PtrSize,HDWP:=A_PtrSize,HENHMETAFILE:=A_PtrSize,HFONT:=A_PtrSize
  static HGDIOBJ:=A_PtrSize,HGLOBAL:=A_PtrSize,HHOOK:=A_PtrSize,HICON:=A_PtrSize,HINSTANCE:=A_PtrSize,HKEY:=A_PtrSize,HKL:=A_PtrSize
    ,HLOCAL:=A_PtrSize,HMENU:=A_PtrSize,HMETAFILE:=A_PtrSize,HMODULE:=A_PtrSize,HMONITOR:=A_PtrSize,HPALETTE:=A_PtrSize,HPEN:=A_PtrSize
    ,HRGN:=A_PtrSize,HRSRC:=A_PtrSize,HSZ:=A_PtrSize,HWINSTA:=A_PtrSize,HWND:=A_PtrSize,LPARAM:=A_PtrSize,LPBOOL:=A_PtrSize,LPBYTE:=A_PtrSize
    ,LPCOLORREF:=A_PtrSize,LPCSTR:=A_PtrSize,LPCTSTR:=A_PtrSize,LPCVOID:=A_PtrSize,LPCWSTR:=A_PtrSize,LPDWORD:=A_PtrSize,LPHANDLE:=A_PtrSize
    ,LPINT:=A_PtrSize,LPLONG:=A_PtrSize,LPSTR:=A_PtrSize,LPTSTR:=A_PtrSize,LPVOID:=A_PtrSize,LPWORD:=A_PtrSize,LPWSTR:=A_PtrSize,PHANDLE:=A_PtrSize
    ,PHKEY:=A_PtrSize,PINT:=A_PtrSize,PINT_PTR:=A_PtrSize,PINT32:=A_PtrSize,PINT64:=A_PtrSize,PLCID:=A_PtrSize,PLONG:=A_PtrSize,PLONGLONG:=A_PtrSize
    ,PLONG_PTR:=A_PtrSize,PLONG32:=A_PtrSize,PLONG64:=A_PtrSize,POINTER_32:=A_PtrSize,POINTER_UNSIGNED:=A_PtrSize,PSHORT:=A_PtrSize,PSIZE_T:=A_PtrSize
    ,PSSIZE_T:=A_PtrSize,PSTR:=A_PtrSize,PTBYTE:=A_PtrSize,PTCHAR:=A_PtrSize,PTSTR:=A_PtrSize,PUCHAR:=A_PtrSize,PUHALF_PTR:=A_PtrSize,PUINT:=A_PtrSize
    ,PUINT_PTR:=A_PtrSize,PUINT32:=A_PtrSize,PUINT64:=A_PtrSize,PULONG:=A_PtrSize,PULONGLONG:=A_PtrSize,PULONG_PTR:=A_PtrSize,PULONG32:=A_PtrSize
    ,PULONG64:=A_PtrSize,PUSHORT:=A_PtrSize,PVOID:=A_PtrSize,PWCHAR:=A_PtrSize,PWORD:=A_PtrSize,PWSTR:=A_PtrSize,SC_HANDLE:=A_PtrSize
    ,SC_LOCK:=A_PtrSize,SERVICE_STATUS_HANDLE:=A_PtrSize,SIZE_T:=A_PtrSize,UINT_PTR:=A_PtrSize,ULONG_PTR:=A_PtrSize,ATOM:=2,LANGID:=2,WCHAR:=2,WORD:=4
	If (TYPE="") ; default
		Return DATA:=""
	else if TYPE in types
		Return DATA:=%TYPE%
	else
		Return DATA:=TYPE
}

;		DEFINES.H          
define(AHK_NAME,"AutoHotkey")

define(T_AHK_NAME,AHK_NAME)
define(T_AHK_VERSION,AHK_VERSION)
define(T_AHK_NAME_VERSION,T_AHK_NAME " v" A_AhkVersion)

;  Window class names: Changing these may result in new versions not being able to detect any old instances
;  that may be running (such as the use of FindWindow() in WinMain()).  It may also have other unwanted
;  effects, such as anything in the OS that relies on the class name that the user may have changed the
;  settings for, such as whether to hide the tray icon (though it probably doesn't use the class name
;  in that example).
;  MSDN: "Because window classes are process specific, window class names need to be unique only within
;  the same process. Also, because class names occupy space in the system's private atom table, you
;  should keep class name strings as short a possible:
define(WINDOW_CLASS_MAIN,"AutoHotkey")
define(WINDOW_CLASS_SPLASH,"AutoHotkey2")
define(WINDOW_CLASS_GUI,"AutoHotkeyGUI") ;  There's a section in Script::Edit() that relies on these all starting with "AutoHotkey".
define(EXT_AUTOIT2,".aut")
define(EXT_AUTOHOTKEY,".ahk")
define(CONVERSION_FLAG,EXT_AUTOIT2 EXT_AUTOHOTKEY)
define(CONVERSION_FLAG_LENGTH,8)

;  AutoIt2 supports lines up to 16384 characters long, and we want to be able to do so too
;  so that really long lines from aut2 scripts, such as a chain of IF commands, can be
;  brought in and parsed.  In addition, it also allows continuation sections to be long.
define(LINE_SIZE,(16384 + 1))  ;  +1 for terminator.  Don't increase LINE_SIZE above 65535 without considering ArgStruct::length's type (WORD).

;  Items that may be needed for VC++ 6.X:
define(SPI_GETFOREGROUNDLOCKTIMEOUT,0x2000)
define(SPI_SETFOREGROUNDLOCKTIMEOUT,0x2001)
define(VK_XBUTTON1,0x05)    ;/* NOT contiguous with L & RBUTTON */
define(VK_XBUTTON2,0x06)    ;/* NOT contiguous with L & RBUTTON */
define(WM_NCXBUTTONDOWN,0x00AB)
define(WM_NCXBUTTONUP,0x00AC)
define(WM_NCXBUTTONDBLCLK,0x00AD)
define(WM_XBUTTONDOWN,0x020B)
define(WM_XBUTTONUP,0x020C)
define(WM_XBUTTONDBLCLK,0x020D)
;/* XButton values are WORD flags */
define(XBUTTON1,0x0001)
define(XBUTTON2,0x0002)
define(HIMETRIC_INCH,2540)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IS_32BIT(signed_value_64){
	global
	Return (signed_value_64 >= INT_MIN && signed_value_64 <= INT_MAX)
}
GET_BIT(buf,n){
	global
	Return (((buf) & (1 << (n))) >> (n))
}
SET_BIT(buf,n,val){
	global
	Return ((val) ? ((buf) |= (1<<(n))) : (buf &= ~(1<<(n))))
}

;  FAIL = 0 to remind that FAIL should have the value zero instead of something arbitrary
;  because some callers may simply evaluate the return result as true or false
;  (and false is a failure):
FAIL:=0,OK:=1,WARN:=1,CRITICAL_ERROR:=2  	;  Some things might rely on OK==1 (i.e. boolean "true")
	, CONDITION_TRUE:=3, CONDITION_FALSE:=4
	, LOOP_BREAK:=5, LOOP_CONTINUE:=6
	, EARLY_RETURN:=7, EARLY_EXIT:=8 ;  EARLY_EXIT needs to be distinct from FAIL for ExitApp() and AutoExecSection().

SM_EVENT:=0, SM_INPUT:=1, SM_PLAY:=2, SM_INPUT_FALLBACK_TO_PLAY:=3, SM_INVALID:=4 ;  SM_EVENT must be zero.
;  In above, SM_INPUT falls back to SM_EVENT when the SendInput mode would be defeated by the presence
;  of a keyboard/mouse hooks in another script (it does this because SendEvent is superior to a
;  crippled/interruptible SendInput due to SendEvent being able to dynamically adjust to changing
;  conditions [such as the user releasing a modifier key during the Send]).  By contrast,
;  SM_INPUT_FALLBACK_TO_PLAY falls back to the SendPlay mode.  SendInput has this extra fallback behavior
;  because it's likely to become the most popular sending method.

EXIT_NONE:=0, EXIT_CRITICAL:=1, EXIT_ERROR:=2, EXIT_DESTROY:=3, EXIT_LOGOFF:=4, EXIT_SHUTDOWN:=5
	, EXIT_WM_QUIT:=6, EXIT_WM_CLOSE:=7, EXIT_MENU:=8, EXIT_EXIT:=9, EXIT_RELOAD:=10, EXIT_SINGLEINSTANCE:=11

WARN_USE_UNSET_LOCAL:=0, WARN_USE_UNSET_GLOBAL:=1, WARN_LOCAL_SAME_AS_GLOBAL:=2, WARN_USE_ENV:=3, WARN_ALL:=4

WARNMODE_OFF:=0, WARNMODE_OUTPUTDEBUG:=1, WARNMODE_MSGBOX:=2	;  WARNMODE_OFF must be zero.

ALLOW_MULTI_INSTANCE:=0, SINGLE_INSTANCE_PROMPT:=1, SINGLE_INSTANCE_REPLACE:=2
	, SINGLE_INSTANCE_IGNORE:=3, SINGLE_INSTANCE_OFF:=4 ;  ALLOW_MULTI_INSTANCE must be zero.
MENU_TYPE_NONE:=0, MENU_TYPE_POPUP:=1, MENU_TYPE_BAR:=2 ;  NONE must be zero.

;  These are used for things that can be turned on, off, or left at a
;  neutral default value that is neither on nor off.  INVALID must
;  be zero:
TOGGLE_INVALID:= 0, TOGGLED_ON:=1, TOGGLED_OFF:=2, ALWAYS_ON:=3, ALWAYS_OFF:=4, TOGGLE:=5
	, TOGGLE_PERMIT:=6, NEUTRAL:=7, TOGGLE_SEND:=8, TOGGLE_MOUSE:=9, TOGGLE_SENDANDMOUSE:=10, TOGGLE_DEFAULT:=11
	, TOGGLE_MOUSEMOVE:=12, TOGGLE_MOUSEMOVEOFF:=13

;  Some things (such as ListView sorting) rely on SCS_INSENSITIVE being zero.
;  In addition, BIF_InStr relies on SCS_SENSITIVE being 1:
StringCaseSenseType := {SCS_INSENSITIVE:0, SCS_SENSITIVE:1, SCS_INSENSITIVE_LOCALE:2, SCS_INSENSITIVE_LOGICAL:3, SCS_INVALID:4}

;  For use with ExpandExpression() and IsPureNumeric().
	;  The sPrecedence array in ExpandExpression() must be kept in sync with any additions, removals,
	;  or re-ordering of the below.  Also, IS_OPERAND() relies on all operand types being at the
	;  beginning of the list:
PURE_NOT_NUMERIC:=0 ;  Must be zero/false because callers rely on that.
	, PURE_INTEGER:=1, PURE_FLOAT:=2
	, SYM_STRING:=0, SYM_INTEGER:=1, SYM_FLOAT:=2 ;  Specific operand types.
	, SYM_VAR:=3 ;  An operand that is a variable's contents.
	, SYM_OPERAND:=4 ;  Generic/undetermined type of operand.
	, SYM_OBJECT:=5 ;  L31:= Represents an IObject interface pointer.
	, SYM_DYNAMIC:=6 ;  An operand that needs further processing during the evaluation phase.
	, SYM_OPERAND_END:=7 ;  Marks the symbol after the last operand.  This value is used below.
	, SYM_BEGIN:= 7 ;  SYM_BEGIN is a special marker to simplify the code.
	, SYM_POST_INCREMENT:=8, SYM_POST_DECREMENT:=9 ;  Kept in this position for use by YIELDS_AN_OPERAND() [helps performance].
	, SYM_DOT:=10 ;  DOT must precede SYM_OPAREN so YIELDS_AN_OPERAND(SYM_GET) == TRUE, allowing auto-concat to work for it even though it is positioned after its second operand.
	, SYM_CPAREN:=11, SYM_CBRACKET:=12, SYM_CBRACE:=13, SYM_OPAREN:=14, SYM_OBRACKET:=15, SYM_OBRACE:=16, SYM_COMMA:=17  ;  CPAREN (close-paren)/CBRACKET/CBRACE must come right before OPAREN for YIELDS_AN_OPERAND.
	, SYM_ASSIGN:=18, SYM_ASSIGN_ADD:=19, SYM_ASSIGN_SUBTRACT:=20, SYM_ASSIGN_MULTIPLY:=21, SYM_ASSIGN_DIVIDE:=22, SYM_ASSIGN_FLOORDIVIDE:=23
	, SYM_ASSIGN_BITOR:=24, SYM_ASSIGN_BITXOR:=25, SYM_ASSIGN_BITAND:=26, SYM_ASSIGN_BITSHIFTLEFT:=27, SYM_ASSIGN_BITSHIFTRIGHT:=28
	, SYM_ASSIGN_CONCAT:=29 ;  THIS MUST BE KEPT AS THE LAST (AND SYM_ASSIGN THE FIRST) BECAUSE THEY'RE USED IN A RANGE-CHECK.
	, SYM_IFF_ELSE:=30, SYM_IFF_THEN:=31 ;  THESE TERNARY OPERATORS MUST BE KEPT IN THIS ORDER AND ADJACENT TO THE BELOW.
	, SYM_OR:=32, SYM_AND:=33 ;  MUST BE KEPT IN THIS ORDER AND ADJACENT TO THE ABOVE because infix-to-postfix is optimized to check a range rather than a series of equalities.
	, SYM_LOWNOT:=34  ;  LOWNOT is the word "not", the low precedence counterpart of !
	, SYM_EQUAL:=35, SYM_EQUALCASE:=36, SYM_NOTEQUAL:=37 ;  =, ==, <> ... Keep this in sync with IS_RELATIONAL_OPERATOR() below.
	, SYM_GT:=38, SYM_LT:=39, SYM_GTOE:=40, SYM_LTOE:=41  ;  >, <, >=, <= ... Keep this in sync with IS_RELATIONAL_OPERATOR() below.
	, SYM_CONCAT:=42
	, SYM_BITOR:=43 ;  Seems more intuitive to have these higher in prec. than the above, unlike C and Perl, but like Python.
	, SYM_BITXOR:=44 ;  SYM_BITOR (ABOVE) MUST BE KEPT FIRST AMONG THE BIT OPERATORS BECAUSE IT'S USED IN A RANGE-CHECK.
	, SYM_BITAND:=45
	, SYM_BITSHIFTLEFT:=46, SYM_BITSHIFTRIGHT:=47 ;  << >>  ALSO:= SYM_BITSHIFTRIGHT MUST BE KEPT LAST AMONG THE BIT OPERATORS BECAUSE IT'S USED IN A RANGE-CHECK.
	, SYM_ADD:=48, SYM_SUBTRACT:=49
	, SYM_MULTIPLY:=50, SYM_DIVIDE:=51, SYM_FLOORDIVIDE:=52
	, SYM_NEGATIVE:=53, SYM_HIGHNOT:=54, SYM_BITNOT:=55, SYM_ADDRESS:=56, SYM_DEREF:=57 ;  Don't change position or order of these because Infix-to-postfix converter's special handling for SYM_POWER relies on them being adjacent to each other.
	, SYM_POWER:=58    ;  See comments near precedence array for why this takes precedence over SYM_NEGATIVE.
	, SYM_PRE_INCREMENT:=59, SYM_PRE_DECREMENT:=60 ;  Must be kept after the post-ops and in this order relative to each other due to a range check in the code.
	, SYM_FUNC:=61     ;  A call to a function.
	, SYM_NEW:=62      ;  new Class()
	, SYM_REGEXMATCH:=63 ;  L31:= Experimental ~= RegExMatch operator, equivalent to a RegExMatch call in two-parameter mode.
	, SYM_COUNT:=64    ;  Must be last because it's the total symbol count for everything above.
	, SYM_INVALID:=65  ;  Some callers may rely on YIELDS_AN_OPERAND(SYM_INVALID)==false.

IS_NUMERIC(symbol){
	global
	Return ((symbol) == SYM_INTEGER || (symbol) == SYM_FLOAT) ;  Ordered for short-circuit performance.
}
IS_OPERAND(symbol){
	global
	Return ((symbol) < SYM_OPERAND_END)
}
IS_OPAREN_LIKE(symbol){
	global
	Return ((symbol) <= SYM_OBRACE && (symbol) >= SYM_OPAREN)
}
IS_CPAREN_LIKE(symbol){
	global
	Return ((symbol) <= SYM_CBRACE && (symbol) >= SYM_CPAREN)
}
IS_OPAREN_MATCHING_CPAREN(sym_oparen, sym_cparen){
	global
	Return ((sym_oparen - sym_cparen) == (SYM_OPAREN - SYM_CPAREN)) ;  Requires that (IS_OPAREN_LIKE(sym_oparen) || IS_CPAREN_LIKE(sym_cparen)) is true.
}
SYM_CPAREN_FOR_OPAREN(symbol){
	global
	Return ((symbol) - (SYM_OPAREN - SYM_CPAREN)) ;  Caller must confirm it is OPAREN or OBRACKET.
}
SYM_OPAREN_FOR_CPAREN(symbol){
	global
	Return ((symbol) + (SYM_OPAREN - SYM_CPAREN)) ;  Caller must confirm it is CPAREN or CBRACKET.
}
YIELDS_AN_OPERAND(symbol){
	global
	Return ((symbol) < SYM_OPAREN) ;  CPAREN also covers the tail end of a function call.  Post-inc/dec yields an operand for things like Var++ + 2.  Definitely needs the parentheses around symbol.
}
IS_ASSIGNMENT_EXCEPT_POST_AND_PRE(symbol){
	global
	Return (symbol <= SYM_ASSIGN_CONCAT && symbol >= SYM_ASSIGN) ;  Check upper bound first for short-circuit performance.
}
IS_ASSIGNMENT_OR_POST_OP(symbol){
	global
	Return (IS_ASSIGNMENT_EXCEPT_POST_AND_PRE(symbol) || symbol == SYM_POST_INCREMENT || symbol == SYM_POST_DECREMENT)
}
IS_RELATIONAL_OPERATOR(symbol){
	global
	return (symbol >= SYM_EQUAL && symbol <= SYM_LTOE)
}

;  These two are macros for maintainability (i.e. seeing them together here helps maintain them together).
SYM_DYNAMIC_IS_DOUBLE_DEREF(token){
	Return (token.buf) ;  SYM_DYNAMICs other than doubles have NULL buf, at least at the stage this macro is called.
}
SYM_DYNAMIC_IS_VAR_NORMAL_OR_CLIP(token){
	global
	Return (!token.buf && ((token.var.Type() == VAR_NORMAL || token.var.Type() == VAR_CLIPBOARD))) ;  i.e. it's an evironment variable or the clipboard, not a built-in variable or double-deref.
}

;  Something in the compiler hates the name TokenType, so using a different name.
ExprTokenType := " 
(
	//  Due to the presence of 8-byte members (double and __int64) this entire struct is aligned on 8-byte
	//  vs. 4-byte boundaries.  The compiler defaults to this because otherwise an 8-byte member might
	//  sometimes not start at an even address, which would hurt performance on Pentiums, etc.
	union //  Which of its members is used depends on the value of symbol, below.
	{
		__int64 value_int64; //  for SYM_INTEGER
		double value_double; //  for SYM_FLOAT
		struct
		{
			union //  These nested structs and unions minimize the token size by overlapping data.
			{
				IObject *object;
				DerefType *deref; //  for SYM_FUNC
				Var *var;         //  for SYM_VAR
				LPTSTR marker;     //  for SYM_STRING and SYM_OPERAND.
			};
			union //  Due to the outermost union, this doesn't increase the total size of the struct on x86 builds (but it does on x64). It's used by SYM_FUNC (helps built-in functions), SYM_DYNAMIC, SYM_OPERAND, and perhaps other misc. purposes.
			{
				LPTSTR buf;
				size_t marker_length; //  Used only with aResultToken. TODO: Move into separate ResultTokenType struct.
			};
		};  
	};
	//  Note that marker's str-length should not be stored in this struct, even though it might be readily
	//  available in places and thus help performance.  This is because if it were stored and the marker
	//  or SYM_VAR's var pointed to a location that was changed as a side effect of an expression's
	//  call to a script function, the length would then be invalid.
	SymbolType symbol; //  Short-circuit benchmark is currently much faster with this and the next beneath the union, perhaps due to CPU optimizations for 8-byte alignment.
	union
	{
		ExprTokenType *circuit_token; //  Facilitates short-circuit boolean evaluation.
		LPTSTR mem_to_free; //  Used only with aResultToken. TODO: Move into separate ResultTokenType struct.
	};
	//  The above two probably need to be adjacent to each other to conserve memory due to 8-byte alignment,
	//  which is the default alignment (for performance reasons) in any struct that contains 8-byte members
	//  such as double and __int64.
)"

;L31: Abstract interface for "objects".
IObject := "
(
	//  See script_object.cpp for comments.
	ResultType Invoke;
	
	//  Simple reference-counting mechanism.  Usage should be similar to IUnknown (COM).
	//  Some scripts may rely on these being at the same offset as IUnknown::AddRef/Release.
	ULONG AddRef;
    ULONG Release;
)"

;  Flags used when calling Invoke; also used by g_ObjGet etc.:
define(IT_GET,0)
define(IT_SET,1)
define(IT_CALL,2) ;  L40: MetaObject::Invoke relies on these being mutually-exclusive bits.
define(IT_BITMASK,3) ;  bit-mask for the above.

define(IF_METAOBJ,0x10000) ;  Indicates 'this' is a meta-object/base of aThisToken. Restricts some functionality and causes aThisToken to be inserted into the param list of called functions.
define(IF_METAFUNC,0x20000) ;  Indicates Invoke should call a meta-function before checking the object's fields.
define(IF_META,IF_METAOBJ | IF_METAFUNC)	;  Flags for regular recursion into base object.
define(IF_FUNCOBJ,0x40000) ;  Indicates 'this' is a function, being called via another object (aParam[0]).

define(MAX_TOKENS,512) ;  Max number of operators/operands.  Seems enough to handle anything realistic, while conserving call-stack space.
;		define(STACK_PUSH(token_ptr) stack[stack_count++] = token_ptr
;		define(STACK_POP stack[--stack_count]  ;  To be used as the r-value for an assignment.

;  But the array that goes with these actions is in globaldata.cpp because
;  otherwise it would be a little cumbersome to declare the extern version
;  of the array in here (since it's only extern to modules other than
;  script.cpp):

;  Seems best to make ACT_INVALID zero so that it will be the ZeroMemory() default within
;  any POD structures that contain an action_type field:
ACT_INVALID:= FAIL  ;  These should both be zero for initialization and function-return-value purposes.
	, ACT_ASSIGN:=1, ACT_ASSIGNEXPR:=2, ACT_EXPRESSION:=3, ACT_ADD:=4, ACT_SUB:=5, ACT_MULT:=6, ACT_DIV:=7
	, ACT_ASSIGN_FIRST:= 1, ACT_ASSIGN_LAST:= 7
	, ACT_REPEAT:=8 ;  Never parsed directly, only provided as a translation target for the old command (see other notes).
	, ACT_ELSE:=9   ;  Parsed at a lower level than most commands to support same-line ELSE-actions (e.g. "else if").
	, ACT_IFIN:=10, ACT_IFNOTIN:=11, ACT_IFCONTAINS:=12, ACT_IFNOTCONTAINS:=14, ACT_IFIS:=15, ACT_IFISNOT:=16
	, ACT_IFBETWEEN:=17, ACT_IFNOTBETWEEN:=18
	, ACT_IFEXPR:=19  ;  i.e. if (expr)
	 ;  *** *** *** KEEP ALL OLD-STYLE/AUTOIT V2 IFs AFTER THIS (v1.0.20 bug fix). *** *** ***
	 , ACT_FIRST_IF_ALLOWING_SAME_LINE_ACTION:=20
	 ;  *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
	 ;  ACT_IS_IF_OLD() relies upon ACT_IFEQUAL through ACT_IFLESSOREQUAL being adjacent to one another
	 ;  and it relies upon the fact that ACT_IFEQUAL is first in the series and ACT_IFLESSOREQUAL last.
	, ACT_IFEQUAL:=20, ACT_IFNOTEQUAL:=21, ACT_IFGREATER:=22, ACT_IFGREATEROREQUAL:=23
	, ACT_IFLESS:=24, ACT_IFLESSOREQUAL:=25
	, ACT_FIRST_OPTIMIZED_IF:=17, ACT_LAST_OPTIMIZED_IF:=25
	, ACT_FIRST_COMMAND:= 26 ;  i.e the above aren't considered commands for parsing/searching purposes.
	, ACT_IFWINEXIST:= 26
	, ACT_IFWINNOTEXIST:= 27, ACT_IFWINACTIVE:= 28, ACT_IFWINNOTACTIVE:=29
	, ACT_IFINSTRING:= 30, ACT_IFNOTINSTRING:= 31
	, ACT_IFEXIST:= 32, ACT_IFNOTEXIST:= 33, ACT_IFMSGBOX:= 34
	, ACT_FIRST_IF:=10, ACT_LAST_IF:=34  ;  Keep this range updated with any new IFs that are added.
	, ACT_MSGBOX:= 35, ACT_INPUTBOX:= 36, ACT_SPLASHTEXTON:= 37, ACT_SPLASHTEXTOFF:= 38, ACT_PROGRESS:= 39, ACT_SPLASHIMAGE:= 40
	, ACT_TOOLTIP:= 41, ACT_TRAYTIP:= 42, ACT_INPUT:=43
	, ACT_TRANSFORM:= 44, ACT_STRINGLEFT:= 45, ACT_STRINGRIGHT:= 46, ACT_STRINGMID:= 47
	, ACT_STRINGTRIMLEFT:= 48, ACT_STRINGTRIMRIGHT:= 49, ACT_STRINGLOWER:=50, ACT_STRINGUPPER:=51
	, ACT_STRINGLEN:=52, ACT_STRINGGETPOS:=53, ACT_STRINGREPLACE:=54, ACT_STRINGSPLIT:=55, ACT_SPLITPATH:=56, ACT_SORT:=57
	, ACT_ENVGET:=58, ACT_ENVSET:=59, ACT_ENVUPDATE:=60
	, ACT_RUNAS:=61, ACT_RUN:=62, ACT_RUNWAIT:=63, ACT_URLDOWNLOADTOFILE:=64
	, ACT_GETKEYSTATE:=65
	, ACT_SEND:=66, ACT_SENDRAW:=67, ACT_SENDINPUT:=68, ACT_SENDPLAY:=69, ACT_SENDEVENT:=70
	, ACT_CONTROLSEND:=71, ACT_CONTROLSENDRAW:=72, ACT_CONTROLCLICK:=73, ACT_CONTROLMOVE:=74, ACT_CONTROLGETPOS:=75, ACT_CONTROLFOCUS:=76
	, ACT_CONTROLGETFOCUS:=77, ACT_CONTROLSETTEXT:=78, ACT_CONTROLGETTEXT:=79, ACT_CONTROL:=80, ACT_CONTROLGET:=81
	, ACT_SENDMODE:=82, ACT_COORDMODE:=83, ACT_SETDEFAULTMOUSESPEED:=84
	, ACT_CLICK:=85, ACT_MOUSEMOVE:=86, ACT_MOUSECLICK:=87, ACT_MOUSECLICKDRAG:=88, ACT_MOUSEGETPOS:=89
	, ACT_STATUSBARGETTEXT:=90
	, ACT_STATUSBARWAIT:=91
	, ACT_CLIPWAIT:=92, ACT_KEYWAIT:=93
	, ACT_SLEEP:=94, ACT_RANDOM:=95
	, ACT_GOTO:=96, ACT_GOSUB:=97, ACT_ONEXIT:=98, ACT_HOTKEY:=99, ACT_SETTIMER:=100, ACT_CRITICAL:=101, ACT_THREAD:=102, ACT_RETURN:=103, ACT_EXIT:=104
	ACT_LOOP:=105, ACT_FOR:=196, ACT_WHILE:=107, ACT_UNTIL:=108, ACT_BREAK:=109, ACT_CONTINUE:=110 ;  Keep LOOP, FOR, WHILE and UNTIL together and in this order for range checks in various places.
	, ACT_BLOCK_BEGIN:=111, ACT_BLOCK_END:=112
	, ACT_WINACTIVATE:=113, ACT_WINACTIVATEBOTTOM:=114
	, ACT_WINWAIT:=115, ACT_WINWAITCLOSE:=116, ACT_WINWAITACTIVE:=117, ACT_WINWAITNOTACTIVE:=118
	, ACT_WINMINIMIZE:=119, ACT_WINMAXIMIZE:=120, ACT_WINRESTORE:=121
	, ACT_WINHIDE:=122, ACT_WINSHOW:=123
	, ACT_WINMINIMIZEALL:=124, ACT_WINMINIMIZEALLUNDO:=125
	, ACT_WINCLOSE:=126, ACT_WINKILL:=127, ACT_WINMOVE:=128, ACT_WINMENUSELECTITEM:=129, ACT_PROCESS:=130
	, ACT_WINSET:=131, ACT_WINSETTITLE:=132, ACT_WINGETTITLE:=133, ACT_WINGETCLASS:=134, ACT_WINGET:=135, ACT_WINGETPOS:=136, ACT_WINGETTEXT:=137
	, ACT_SYSGET:=138, ACT_POSTMESSAGE:=139, ACT_SENDMESSAGE:=140
	;  Keep rarely used actions near the bottom for parsing/performance reasons:=
	, ACT_PIXELGETCOLOR:=141, ACT_PIXELSEARCH:=142, ACT_IMAGESEARCH:=143
	, ACT_GROUPADD:=144, ACT_GROUPACTIVATE:=145, ACT_GROUPDEACTIVATE:=146, ACT_GROUPCLOSE:=147
	, ACT_DRIVESPACEFREE:=148, ACT_DRIVE:=149, ACT_DRIVEGET:=150
	, ACT_SOUNDGET:=151, ACT_SOUNDSET:=152, ACT_SOUNDGETWAVEVOLUME:=153, ACT_SOUNDSETWAVEVOLUME:=154, ACT_SOUNDBEEP:=155, ACT_SOUNDPLAY:=156
	, ACT_FILEAPPEND:=157, ACT_FILEREAD:=158, ACT_FILEREADLINE:=159, ACT_FILEDELETE:=160, ACT_FILERECYCLE:=161, ACT_FILERECYCLEEMPTY:=162
	, ACT_FILEINSTALL:=163, ACT_FILECOPY:=164, ACT_FILEMOVE:=165, ACT_FILECOPYDIR:=166, ACT_FILEMOVEDIR:=167
	, ACT_FILECREATEDIR:=168, ACT_FILEREMOVEDIR:=169
	, ACT_FILEGETATTRIB:=170, ACT_FILESETATTRIB:=171, ACT_FILEGETTIME:=172, ACT_FILESETTIME:=173
	, ACT_FILEGETSIZE:=174, ACT_FILEGETVERSION:=175
	, ACT_SETWORKINGDIR:=176, ACT_FILESELECTFILE:=177, ACT_FILESELECTFOLDER:=178, ACT_FILEGETSHORTCUT:=179, ACT_FILECREATESHORTCUT:=180
	, ACT_INIREAD:=180, ACT_INIWRITE:=182, ACT_INIDELETE:=183
	, ACT_REGREAD:=184, ACT_REGWRITE:=185, ACT_REGDELETE:=186, ACT_OUTPUTDEBUG:=187
	, ACT_SETKEYDELAY:=188, ACT_SETMOUSEDELAY:=189, ACT_SETWINDELAY:=190, ACT_SETCONTROLDELAY:=191, ACT_SETBATCHLINES:=192
	, ACT_SETTITLEMATCHMODE:=193, ACT_SETFORMAT:=194, ACT_FORMATTIME:=195
	, ACT_SUSPEND:=196, ACT_PAUSE:=197
	, ACT_AUTOTRIM:=198, ACT_STRINGCASESENSE:=199, ACT_DETECTHIDDENWINDOWS:=200, ACT_DETECTHIDDENTEXT:=201, ACT_BLOCKINPUT:=202
	, ACT_SETNUMLOCKSTATE:=203, ACT_SETSCROLLLOCKSTATE:=204, ACT_SETCAPSLOCKSTATE:=205, ACT_SETSTORECAPSLOCKMODE:=206
	, ACT_KEYHISTORY:=207, ACT_LISTLINES:=208, ACT_LISTVARS:=209, ACT_LISTHOTKEYS:=210
	, ACT_EDIT:=211, ACT_RELOAD:=212, ACT_MENU:=213, ACT_GUI:=214, ACT_GUICONTROL:=215, ACT_GUICONTROLGET:=216
	, ACT_EXITAPP:=217
	, ACT_SHUTDOWN:=218
	, ACT_FILEENCODING:=219
;  Make these the last ones before the count so they will be less often processed.  This helps
;  performance because this one doesn't actually have a keyword so will never result
;  in a match anyway.  UPDATE: No longer used because Run/RunWait is now required, which greatly
;  improves syntax checking during load:
; , ACT_EXEC
;  It's safer not to do this here.  It's better set by a
;  calculation immediately after the array is declared and initialized,
;  at which time we know its true size:
;  , ACT_COUNT


OLD_INVALID:= FAIL  ;  These should both be zero for initialization and function-return-value purposes.
  , OLD_SETENV:=1, OLD_ENVADD:=2, OLD_ENVSUB:=3, OLD_ENVMULT:=4, OLD_ENVDIV:=5
  ;  ACT_IS_IF_OLD() relies on the items in this next line being adjacent to one another and in this order:=
  , OLD_IFEQUAL:=6, OLD_IFNOTEQUAL:=7, OLD_IFGREATER:=8, OLD_IFGREATEROREQUAL:=9, OLD_IFLESS:=10, OLD_IFLESSOREQUAL:=11
  , OLD_LEFTCLICK:=12, OLD_RIGHTCLICK:=13, OLD_LEFTCLICKDRAG:=14, OLD_RIGHTCLICKDRAG:=15
  , OLD_HIDEAUTOITWIN:=16, OLD_REPEAT:=17, OLD_ENDREPEAT:=18
  , OLD_WINGETACTIVETITLE:=19, OLD_WINGETACTIVESTATS:=20


;  It seems best not to include ACT_SUSPEND in the below, since the user may have marked
;  a large number of subroutines as "Suspend, Permit".  Even PAUSE is iffy, since the user
;  may be using it as "Pause, off/toggle", but it seems best to support PAUSE because otherwise
;  hotkey such as "#z::pause" would not be able to unpause the script if its MaxThreadsPerHotkey
;  was 1 (the default).
ACT_IS_ALWAYS_ALLOWED(ActionType){
	global
	Return (ActionType == ACT_EXITAPP || ActionType == ACT_PAUSE
	|| ActionType == ACT_EDIT || ActionType == ACT_RELOAD || ActionType == ACT_KEYHISTORY
	|| ActionType == ACT_LISTLINES || ActionType == ACT_LISTVARS || ActionType == ACT_LISTHOTKEYS)
}

ACT_IS_ASSIGN(ActionType){
	global
	Return (ActionType <= ACT_ASSIGN_LAST && ActionType >= ACT_ASSIGN_FIRST) ;  Ordered for short-circuit performance.
}
ACT_IS_IF(ActionType){
	global
	Return (ActionType >= ACT_FIRST_IF && ActionType <= ACT_LAST_IF)
}
ACT_IS_IF_OR_ELSE_OR_LOOP(ActionType){
	global
	Return (ACT_IS_IF(ActionType) || ActionType == ACT_ELSE 
	|| ActionType == ACT_LOOP || ActionType == ACT_WHILE || ActionType == ACT_FOR)
}
ACT_IS_IF_OLD(ActionType, OldActionType){
	global
	Return (ActionType >= ACT_FIRST_IF_ALLOWING_SAME_LINE_ACTION && ActionType <= ACT_LAST_IF)
	&& (ActionType < ACT_IFEQUAL || ActionType > ACT_IFLESSOREQUAL || (OldActionType >= OLD_IFEQUAL && OldActionType <= OLD_IFLESSOREQUAL))
}
	;  All the checks above must be done so that cmds such as IfMsgBox (which are both "old" and "new")
	;  can support parameters on the same line or on the next line.  For example, both of the above are allowed:
	;  IfMsgBox, No, Gosub, XXX
	;  IfMsgBox, No
	;      Gosub, XXX

;  For convenience in many places.  Must cast to int to avoid loss of negative values.
;		define(BUF_SPACE_REMAINING ((int)(aBufSize - (aBuf - aBuf_orig)))

;  MsgBox timeout value.  This can't be zero because that is used as a failure indicator:
;  Also, this define is in this file to prevent problems with mutual
;  dependency between script.h and window.h.  Update: It can't be -1 either because
;  that value is used to indicate failure by DialogBox():
define(AHK_TIMEOUT,-2)
;  And these to prevent mutual dependency problem between window.h and globaldata.h:
define(MAX_MSGBOXES,7) ;  Probably best not to change this because it's used by OurTimers to set the timer IDs, which should probably be kept the same for backward compatibility.
define(MAX_INPUTBOXES,4)
define(MAX_PROGRESS_WINDOWS,10)  ;  Allow a lot for downloads and such.
define(MAX_PROGRESS_WINDOWS_STR,"10") ;  Keep this in sync with above.
define(MAX_SPLASHIMAGE_WINDOWS,10)
define(MAX_SPLASHIMAGE_WINDOWS_STR,"10") ;  Keep this in sync with above.
define(MAX_GUI_WINDOWS,99)  ;  Things that parse the "NN:" prefix for Gui/GuiControl might rely on this being 2-digit.
define(MAX_GUI_WINDOWS_STR,"99") ;  Keep this in sync with above.

define(MAX_MSG_MONITORS,500)

;  IMPORTANT: Before ever changing the below, note that it will impact the IDs of menu items created
;  with the MENU command, as well as the number of such menu items that are possible (currently about
;  65500-11000=54500). See comments at ID_USER_FIRST for details:
define(GUI_CONTROL_BLOCK_SIZE,1000)
define(MAX_CONTROLS_PER_GUI,GUI_CONTROL_BLOCK_SIZE * 11) ;  Some things rely on this being less than 0xFFFF and an even multiple of GUI_CONTROL_BLOCK_SIZE.
define(NO_CONTROL_INDEX,MAX_CONTROLS_PER_GUI) ;  Must be 0xFFFF or less.

define(NO_EVENT_INFO,0) ;  For backward compatibility with documented contents of A_EventInfo, this should be kept as 0 vs. something more special like UINT_MAX.

define(MAX_TOOLTIPS,20)
define(MAX_TOOLTIPS_STR,"20")   ;  Keep this in sync with above.
define(MAX_FILEDIALOGS,4)
define(MAX_FOLDERDIALOGS,4)

define(MAX_NUMBER_LENGTH,255)                   ;  Large enough to allow custom zero or space-padding via %10.2f, etc.
define(MAX_NUMBER_SIZE,MAX_NUMBER_LENGTH + 1) ;  But not too large because some things might rely on this being fairly small.
define(MAX_INTEGER_LENGTH,20)                     ;  Max length of a 64-bit number when expressed as decimal or
define(MAX_INTEGER_SIZE,MAX_INTEGER_LENGTH + 1) ;  hex string; e.g. -9223372036854775808 or (unsigned) 18446744073709551616 or (hex) -0xFFFFFFFFFFFFFFFF.

;  Hot-strings:
;  memmove() and proper detection of long hotstrings rely on buf being at least this large:
define(HS_BUF_SIZE,MAX_HOTSTRING_LENGTH * 2 + 10)
define(HS_BUF_DELETE_COUNT,HS_BUF_SIZE / 2)
define(HS_MAX_END_CHARS,100)

;  Bitwise storage of boolean flags.  This section is kept in this file because
;  of mutual dependency problems between hook.h and other header files:
define(HookType,"UCHAR")
define(HOOK_KEYBD,0x01)
define(HOOK_MOUSE,0x02)
define(HOOK_FAIL,0xFF)

;  These macros used to keep app responsive during a long operation.  In v1.0.39, the
;  hooks have a dedicated thread.  However, mLastPeekTime is still compared to 5 rather
;  than some higher value for the following reasons:
;  1) Want hotkeys pressed during a long operation to take effect as quickly as possible.
;     For example, in games a hotkey's response time is critical.
;  2) Benchmarking shows less than a 0.5% performance improvement from this comparing
;     to a higher value (even one as high as 500), even when the system is under heavy
;     load from other processes).
; 
;  mLastPeekTime is global/static so that recursive functions, such as FileSetAttrib(),
;  will sleep as often as intended even if the target files require frequent recursion.
;  The use of a global/static is not friendly to recursive calls to the function (i.e. calls
;  maded as a consequence of the current script subroutine being interrupted by another during
;  this instance's MsgSleep()).  However, it doesn't seem to be that much of a consequence
;  since the exact interval/period of the MsgSleep()'s isn't that important.  It's also
;  pretty unlikely that the interrupting subroutine will also just happen to call the same
;  function rather than some other.
; 
;  Older comment that applies if there is ever again no dedicated thread for the hooks:
;  These macros were greatly simplified when it was discovered that PeekMessage(), when called
;  directly as below, is enough to prevent keyboard and mouse lag when the hooks are installed
define(msg,"LONG_OPERATION_INIT") 
define(tick_now,"DWORD")

;  Defining these here avoids awkwardness due to the fact that globaldata.cpp
;  does not (for design reasons) include globaldata.h:
define(ActionTypeType,UCHAR) ;  If ever have more than 256 actions, will have to change this (but it would increase code size due to static data in g_act).
define(MAX_NUMERIC_PARAMS,7)
Action := "
(
	LPTSTR Name;
	//  Just make them int's, rather than something smaller, because the collection
	//  of actions will take up very little memory.  Int's are probably faster
	//  for the processor to access since they are the native word size, or something:
	//  Update for v1.0.40.02: Now that the ARGn macros don't check mArgc, MaxParamsAu2WithHighBit
	//  is needed to allow MaxParams to stay pure, which in turn prevents Line::Perform()
	//  from accessing a NULL arg in the sArgDeref array (i.e. an arg that exists only for
	//  non-AutoIt2 scripts, such as the extra ones in StringGetPos).
	//  Also, changing these from ints to chars greatly reduces code size since this struct
	//  is used by g_act to build static data into the code.  Testing shows that the compiler
	//  will generate a warning even when not in debug mode in the unlikely event that a constant
	//  larger than 127 is ever stored in one of these:
	char MinParams, MaxParams, MaxParamsAu2WithHighBit;
	//  Array indicating which args must be purely numeric.  The first arg is
	//  number 1, the second 2, etc (i.e. it doesn't start at zero).  The list
	//  is ended with a zero, much like a string.  The compiler will notify us
	//  (verified) if MAX_NUMERIC_PARAMS ever needs to be increased:
	ActionTypeType NumericParams[" MAX_NUMERIC_PARAMS "];
)"


;  Values are hard-coded for some of the below because they must not deviate from the documented, numerical
;  TitleMatchModes:
TitleMatchModes := {MATCHMODE_INVALID: FAIL, FIND_IN_LEADING_PART: 1, FIND_ANYWHERE: 2, FIND_EXACT: 3, FIND_REGEX:4, FIND_FAST:5, FIND_SLOW:6}

define(GuiIndexType,"UINT") ;  Some things rely on it being unsigned to avoid the need to check for less-than-zero.
define(GuiEventType,"UINT") ;  Made a UINT vs. enum so that illegal/underflow/overflow values are easier to detect.

;  The following array and enum must be kept in sync with each other:
define(GUI_EVENT_NAMES,["","Normal","DoubleClick","RightClick","ColClick"])
GUI_EVENT_NONE:=0  ;  NONE must be zero for any uses of ZeroMemory(), synonymous with false, etc.
	, GUI_EVENT_NORMAL:=1, GUI_EVENT_DBLCLK:=2 ;  Try to avoid changing this and the other common ones in case anyone automates a script via SendMessage (though that does seem very unlikely).
	, GUI_EVENT_RCLK:=3, GUI_EVENT_COLCLK:=4
	, GUI_EVENT_FIRST_UNNAMED:=5  ;  This item must always be 1 greater than the last item that has a name in the GUI_EVENT_NAMES array below.
	, GUI_EVENT_DROPFILES:= 5
	, GUI_EVENT_CLOSE:= 6, GUI_EVENT_ESCAPE:= 7, GUI_EVENT_RESIZE:= 8, GUI_EVENT_CONTEXTMENU:= 9
	, GUI_EVENT_DIGIT_0:=48 ;  Here just as a reminder that this value and higher are reserved so that a single printable character or digit (mnemonic) can be sent, and also so that ListView's "I" notification can add extra data into the high-byte (which lies just to the left of the "I" character in the bitfield).

;  Bitwise flags:
define(CoordModeAttribType,"UCHAR")
define(COORD_MODE_PIXEL,0x01)
define(COORD_MODE_MOUSE,0x02)
define(COORD_MODE_TOOLTIP,0x04)
define(COORD_MODE_CARET,0x08)
define(COORD_MODE_MENU,0x10)
define(COORD_CENTERED,INT_MIN + 1)
define(COORD_UNSPECIFIED,INT_MIN)
define(COORD_UNSPECIFIED_SHORT,SHRT_MIN)  ;  This essentially makes coord -32768 "reserved", but it seems acceptable given usefulness and the rarity of a real coord like that.

define(EventInfoType,"UINT_PTR")

;  Same reason as above struct.  It's best to keep this struct as small as possible
;  because it's used as a local (stack) var by at least one recursive function:
;  Each instance of this struct generally corresponds to a quasi-thread.  The function that creates
;  a new thread typically saves the old thread's struct values on its stack so that they can later
;  be copied back into the g struct when the thread is resumed:

FuncAndToken := new Struct("
(
	ExprTokenType mToken ;
	LPTSTR result_to_return_dll;
	Func * mFunc ;
	VARIANT variant_to_return_dll;
)")
 
global_struct := "
(
	//  8-byte items are listed first, which might improve alignment for 64-bit processors (dubious).
	__int64 LinesPerCycle; //  Use 64-bits for this so that user can specify really large values.
	__int64 mLoopIteration; //  Signed, since script/ITOA64 aren't designed to handle unsigned.
	WIN32_FIND_DATA *mLoopFile;  //  The file of the current file-loop, if applicable.
	RegItemStruct *mLoopRegItem; //  The registry subkey or value of the current registry enumeration loop.
	LoopReadFileStruct *mLoopReadFile;  //  The file whose contents are currently being read by a File-Read Loop.
	LPTSTR mLoopField;  //  The field of the current string-parsing loop.
	//  v1.0.44.14: The above mLoop attributes were moved into this structure from the script class
	//  because they're more approriate as thread-attributes rather than being global to the entire script.

	TitleMatchModes TitleMatchMode;
	int IntervalBeforeRest;
	int UninterruptedLineCount; //  Stored as a g-struct attribute in case OnExit sub interrupts it while uninterruptible.
	int Priority;  //  This thread's priority relative to others.
	DWORD LastError; //  The result of GetLastError() after the most recent DllCall or Run.
	GuiEventType GuiEvent; //  This thread's triggering event, e.g. DblClk vs. normal click.
	EventInfoType EventInfo; //  Not named 'GuiEventInfo' because it applies to non-GUI events such as clipboard.
	POINT GuiPoint; //  The position of GuiEvent. Stored as a thread vs. window attribute so that underlying threads see their original values when resumed.
	GuiIndexType GuiWindowIndex, GuiControlIndex; //  The GUI window index and control index that launched this thread.
	GuiIndexType GuiDefaultWindowIndex; //  This thread's default GUI window, used except when specified 'Gui, 2:Add, ...'
	GuiIndexType DialogOwnerIndex; //  This thread's GUI owner, if any. Stored as Index vs. HWND to insulate against the case where a GUI window has been destroyed and recreated with a new HWND.
	int WinDelay;  //  negative values may be used as special flags.
	int ControlDelay; //  negative values may be used as special flags.
	int KeyDelay;     // 
	int KeyDelayPlay; // 
	int PressDuration;     //  The delay between the up-event and down-event of each keystroke.
	int PressDurationPlay; //  
	int MouseDelay;     //  negative values may be used as special flags.
	int MouseDelayPlay; // 
	TCHAR FormatFloat[32];
	Func *CurrentFunc; //  v1.0.46.16: The function whose body is currently being processed at load-time, or being run at runtime (if any).
	Func *CurrentFuncGosub; //  v1.0.48.02: Allows A_ThisFunc to work even when a function Gosubs an external subroutine.
	Label *CurrentLabel; //  The label that is currently awaiting its matching 'return' (if any).
	HWND hWndLastUsed;  //  In many cases, it's better to use GetValidLastUsedWindow() when referring to this.
	; HWND hWndToRestore;
	int MsgBoxResult;  //  Which button was pressed in the most recent MsgBox.
	HWND DialogHWND;

	//  All these one-byte members are kept adjacent to make the struct smaller, which helps conserve stack space:
	SendModes SendMode;
	DWORD PeekFrequency; //  DWORD vs. UCHAR might improve performance a little since it's checked so often.
	DWORD ThreadStartTime;
	int UninterruptibleDuration; //  Must be int to preserve negative values found in g_script.mUninterruptibleTime.
	DWORD CalledByIsDialogMessageOrDispatchMsg; //  Detects that fact that some messages (like WM_KEYDOWN->WM_NOTIFY for UpDown controls) are translated to different message numbers by IsDialogMessage (and maybe Dispatch too).
	bool CalledByIsDialogMessageOrDispatch; //  Helps avoid launching a monitor function twice for the same message.  This would probably be okay if it were a normal global rather than in the g-struct, but due to messaging complexity, this lends peace of mind and robustness.
	bool TitleFindFast; //  Whether to use the fast mode of searching window text, or the more thorough slow mode.
	bool DetectHiddenWindows; //  Whether to detect the titles of hidden parent windows.
	bool DetectHiddenText;    //  Whether to detect the text of hidden child windows.
	bool AllowThreadToBeInterrupted;  //  Whether this thread can be interrupted by custom menu items, hotkeys, or timers.
	bool AllowTimers; //  v1.0.40.01 Whether new timer threads are allowed to start during this thread.
	bool ThreadIsCritical; //  Whether this thread has been marked (un)interruptible by the 'Critical' command.
	UCHAR DefaultMouseSpeed;
	UCHAR CoordMode; //  Bitwise collection of flags.
	UCHAR StringCaseSense; //  On/Off/Locale
	bool StoreCapslockMode;
	bool AutoTrim;
	char FormatInt;
	bool MsgBoxTimedOut; //  Doesn't require initialization.
	bool IsPaused; //  The latter supports better toggling via 'Pause' or 'Pause Toggle'.
	bool ListLinesIsEnabled;
	UINT Encoding;
)"

define(DEFAULT_PEEK_FREQUENCY,5)
define(DEFAULT_MOUSE_SPEED,2)
define(MAX_MOUSE_SPEED,100)
define(MAX_MOUSE_SPEED_STR,"100")
define(ERRORLEVEL_SAVED_SIZE,128) ;  The size that can be remembered (saved & restored) if a thread is interrupted. Big in case user put something bigger than a number in g_ErrorLevel.

define(WINAPI_SUFFIX,A_IsUnicode?"W":"A")
define(PROCESS_API_SUFFIX,A_IsUnicode?"W":"") ;  used by Process32First and Process32Next

define(CP_AHKNOBOM,0x80000000)
define(CP_AHKCP,~CP_AHKNOBOM)

;         SCRIPT.H

define(MAX_THREADS_LIMIT,UCHAR_MAX) ;  Uses UCHAR_MAX (255) because some variables that store a thread count are UCHARs.
define(MAX_THREADS_DEFAULT,10) ;  Must not be higher than above.
define(EMERGENCY_THREADS,2) ;  This is the number of extra threads available after g_MaxThreadsTotal has been reached for the following to launch: hotkeys/etc. whose first line is something important like ExitApp or Pause. (see #MaxThreads documentation).
define(MAX_THREADS_EMERGENCY,g_MaxThreadsTotal + EMERGENCY_THREADS)
define(TOTAL_ADDITIONAL_THREADS,EMERGENCY_THREADS + 2) ;  See below.
;  Must allow two beyond EMERGENCY_THREADS: One for the AutoExec/idle thread and one so that ExitApp()
;  can run even when MAX_THREADS_EMERGENCY has been reached.
;  Explanation: If/when AutoExec() finishes, although it no longer needs g_array[0] (not even
;  AutoExecSectionTimeout() needs it because it either won't be called or it will return early),
;  at least the following might still use g_array[0]:
;  1) Threadless (fast-mode) callbacks that have no controlling script thread; see RegisterCallbackCStub().
;  2) g_array[0].IsPaused indicates whether the script is in a paused state while idle.
;  In addition, it probably simplifies the code not to reclaim g_array[0]; e.g. ++g and --g can be done
;  unconditionally when creating new threads.

NORMAL_MODE:=0, UNTIL_RETURN:=1, UNTIL_BLOCK_END:=2, ONLY_ONE_LINE:=3

;  It's done this way so that mAttribute can store a pointer or one of these constants.
;  If it is storing a pointer for a given Action Type, be sure never to compare it
;  for equality against these constants because by coincidence, the pointer value
;  might just match one of them:
define(ATTR_NONE,0)  ;  Some places migh rely on this being zero.
define(ATTR_TRUE,1)
define(ATTR_LOOP_UNKNOWN,1) ;  Same value as the above.        ;  KEEP IN SYNC WITH BELOW.
ATTR_LOOP_IS_UNKNOWN_OR_NONE(attr){
	global
	Return (attr <= ATTR_LOOP_UNKNOWN) ;  KEEP IN SYNC WITH ABOVE.
}
define(ATTR_LOOP_NORMAL,2)
define(ATTR_LOOP_FILEPATTERN,3)
define(ATTR_LOOP_REG,4)
define(ATTR_LOOP_READ_FILE,5)
define(ATTR_LOOP_PARSE,6)
define(ATTR_LOOP_WHILE,7) ;  Lexikos: This is used to differentiate ACT_WHILE from ACT_LOOP, allowing code to be shared.
define(ATTR_LOOP_FOR,8)
;~ typedef void *AttributeType;

FILE_LOOP_INVALID:=0, FILE_LOOP_FILES_ONLY:=1, FILE_LOOP_FILES_AND_FOLDERS:=2, FILE_LOOP_FOLDERS_ONLY:=3
VAR_TYPE_INVALID:=0, VAR_TYPE_NUMBER:=1, VAR_TYPE_INTEGER:=2, VAR_TYPE_FLOAT:=3
	, VAR_TYPE_TIME:=4	, VAR_TYPE_DIGIT:=5, VAR_TYPE_XDIGIT:=6, VAR_TYPE_ALNUM:=7, VAR_TYPE_ALPHA:=8
	, VAR_TYPE_UPPER:=9, VAR_TYPE_LOWER:=10, VAR_TYPE_SPACE:=11

;  Since WM_COMMAND IDs must be shared among all menus and controls, they are carefully conserved,
;  especially since there are only 65,535 possible IDs.  In addition, they are assigned to ranges
;  to minimize the need that they will need to be changed in the future (changing the ID of a main
;  menu item, tray menu item, or a user-defined menu item [by way of increasing MAX_CONTROLS_PER_GUI]
;  is bad because some scripts might be using PostMessage/SendMessage to automate AutoHotkey itself).
;  For this reason, the following ranges are reserved:
;  0: unused (possibly special in some contexts)
;  1: IDOK
;  2: IDCANCEL
;  3 to 1002: GUI window control IDs (these IDs must be unique only within their parent, not across all GUI windows)
;  1003 to 65299: User Defined Menu IDs
;  65300 to 65399: Standard tray menu items.
;  65400 to 65534: main menu items (might be best to leave 65535 unused in case it ever has special meaning)
CONTROL_ID_FIRST := IDCANCEL + 1
	, ID_USER_FIRST := MAX_CONTROLS_PER_GUI + 3 ;  The first ID available for user defined menu items. Do not change this (see above for why).
	, ID_USER_LAST := 65299  ;  The last. Especially do not change this due to scripts using Post/SendMessage to automate AutoHotkey.
	, ID_TRAY_FIRST:=0, ID_TRAY_OPEN := ID_TRAY_FIRST
	, ID_TRAY_HELP:=1, ID_TRAY_WINDOWSPY:=2, ID_TRAY_RELOADSCRIPT:=3
	, ID_TRAY_EDITSCRIPT:=4, ID_TRAY_SUSPEND:=5, ID_TRAY_PAUSE:=6, ID_TRAY_EXIT:=7
	, ID_TRAY_LAST := ID_TRAY_EXIT ;  But this value should never hit the below. There is debug code to enforce.
	, ID_MAIN_FIRST := 65400, ID_MAIN_LAST := 65534 ;  These should match the range used by resource.h


define(ERR_ABORT_NO_SPACES,"The current thread will exit.")
define(ERR_ABORT,"  " ERR_ABORT_NO_SPACES)
define(WILL_EXIT,"The program will exit.")
define(OLD_STILL_IN_EFFECT,"The script was not reloaded; the old version will remain in effect.")
define(ERR_CONTINUATION_SECTION_TOO_LONG,"Continuation section too long.")
define(ERR_UNRECOGNIZED_ACTION,"This line does not contain a recognized action.")
define(ERR_NONEXISTENT_HOTKEY,"Nonexistent hotkey.")
define(ERR_NONEXISTENT_VARIANT,"Nonexistent hotkey variant (IfWin).")
define(ERR_NONEXISTENT_FUNCTION,"Call to nonexistent function.")
define(ERR_EXE_CORRUPTED,"EXE corrupted")
define(ERR_PARAM1_INVALID,"Parameter #1 invalid")
define(ERR_PARAM2_INVALID,"Parameter #2 invalid")
define(ERR_PARAM3_INVALID,"Parameter #3 invalid")
define(ERR_PARAM4_INVALID,"Parameter #4 invalid")
define(ERR_PARAM5_INVALID,"Parameter #5 invalid")
define(ERR_PARAM6_INVALID,"Parameter #6 invalid")
define(ERR_PARAM7_INVALID,"Parameter #7 invalid")
define(ERR_PARAM8_INVALID,"Parameter #8 invalid")
define(ERR_PARAM1_REQUIRED,"Parameter #1 required")
define(ERR_PARAM2_REQUIRED,"Parameter #2 required")
define(ERR_PARAM3_REQUIRED,"Parameter #3 required")
define(ERR_PARAM4_OMIT,"Parameter #4 should be omitted in this case.")
define(ERR_PARAM2_MUST_BE_BLANK,"Parameter #2 must be blank in this case.")
define(ERR_PARAM3_MUST_BE_BLANK,"Parameter #3 must be blank in this case.")
define(ERR_PARAM4_MUST_BE_BLANK,"Parameter #4 must be blank in this case.")
define(ERR_INVALID_KEY_OR_BUTTON,"Invalid key or button name")
define(ERR_MISSING_OUTPUT_VAR,"Requires at least one of its output variables.")
define(ERR_MISSING_OPEN_PAREN,"Missing ""(""")
define(ERR_MISSING_OPEN_BRACE,"Missing ""{""")
define(ERR_MISSING_OPEN_BRACKET,"Missing ""[""") ;  L31
define(ERR_MISSING_CLOSE_PAREN,"Missing "")""")
define(ERR_MISSING_CLOSE_BRACE,"Missing ""}""")
define(ERR_MISSING_CLOSE_BRACKET,"Missing ""]""") ;  L31
define(ERR_MISMATCHED_BRACKET_PAREN,"Mismatched [] or ()") ;  L31
define(ERR_MISSING_CLOSE_QUOTE,"Missing close-quote") ;  No period after short phrases.
define(ERR_MISSING_COMMA,"Missing comma")             ; 
define(ERR_BLANK_PARAM,"Blank parameter")             ; 
define(ERR_TOO_MANY_PARAMS,"Too many parameters passed to function.") ;  L31
define(ERR_TOO_FEW_PARAMS,"Too few parameters passed to function.") ;  L31
define(ERR_ELSE_WITH_NO_IF,"ELSE with no matching IF")
define(ERR_UNTIL_WITH_NO_LOOP,"UNTIL with no matching LOOP")
define(ERR_OUTOFMEM,"Out of memory.")  ;  Used by RegEx too, so don't change it without also changing RegEx to keep the former string.
define(ERR_EXPR_TOO_LONG,"Expression too long")
define(ERR_MEM_LIMIT_REACHED,"Memory limit reached (see #MaxMem in the help file).") ERR_ABORT
define(ERR_NO_LABEL,"Target label does not exist.")
define(ERR_MENU,"Menu does not exist.")
define(ERR_SUBMENU,"Submenu does not exist.")
define(ERR_WINDOW_PARAM,"Requires at least one of its window parameters.")
define(ERR_ON_OFF,"Requires ON/OFF/blank")
define(ERR_ON_OFF_LOCALE,"Requires ON/OFF/LOCALE")
define(ERR_ON_OFF_TOGGLE,"Requires ON/OFF/TOGGLE/blank")
define(ERR_ON_OFF_TOGGLE_PERMIT,"Requires ON/OFF/TOGGLE/PERMIT/blank")
define(ERR_TITLEMATCHMODE,"Requires 1/2/3/Slow/Fast")
define(ERR_MENUTRAY,"Supported only for the tray menu")
define(ERR_REG_KEY,"Invalid registry root key")
define(ERR_REG_VALUE_TYPE,"Invalid registry value type")
define(ERR_INVALID_DATETIME,"Invalid YYYYMMDDHHMISS value")
define(ERR_MOUSE_BUTTON,"Invalid mouse button")
define(ERR_MOUSE_COORD,"X & Y must be either both absent or both present.")
define(ERR_DIVIDEBYZERO,"Divide by zero")
define(ERR_PERCENT,"Must be between -100 and 100.")
define(ERR_MOUSE_SPEED,"Mouse speed must be between 0 and " MAX_MOUSE_SPEED_STR ".")
define(ERR_VAR_IS_READONLY,"Not allowed as an output variable.")
define(ERR_INVALID_DOT,"Unsupported use of "".""")
define(ERR_UNQUOTED_NON_ALNUM,"Unquoted literals may only consist of alphanumeric characters/underscore.")
define(ERR_DUPLICATE_DECLARATION,"Duplicate declaration.")
define(ERR_INVALID_CLASS_VAR,"Invalid class variable declaration.")

define(WARNING_USE_UNSET_VARIABLE,"Using value of uninitialized variable.")
define(WARNING_LOCAL_SAME_AS_GLOBAL,"Local variable with same name as global.")
define(WARNING_USE_ENV_VARIABLE,"Using value of environment variable.")

; ----------------------------------------------------------------------------------


;enum MainWindowModes 
MAIN_MODE_NO_CHANGE:=0, MAIN_MODE_LINES:=1, MAIN_MODE_VARS:=2
	, MAIN_MODE_HOTKEYS:=3, MAIN_MODE_KEYHISTORY:=4, MAIN_MODE_REFRESH:=5

InputBoxType:= "
(
	LPTSTR title;
	LPTSTR text;
	int width;
	int height;
	int xpos;
	int ypos;
	Var *output_var;
	TCHAR password_char;
	LPTSTR default_string;
	DWORD timeout;
	HWND hwnd;
	HFONT font;
)"

SplashType := "
(
	int width;
	int height;
	int bar_pos;  //  The amount of progress of the bar (it's position).
	int margin_x; //  left/right margin
	int margin_y; //  top margin
	int text1_height; //  Height of main text control.
	int object_width;   //  Width of image.
	int object_height;  //  Height of the progress bar or image.
	HWND hwnd;
	int pic_type;
	union
	{
		HBITMAP pic_bmp; //  For SplashImage.
		HICON pic_icon;
	};
	HWND hwnd_bar;
	HWND hwnd_text1;  //  MainText
	HWND hwnd_text2;  //  SubText
	HFONT hfont1; //  Main
	HFONT hfont2; //  Sub
	HBRUSH hbrush; //  Window background color brush.
	COLORREF color_bk; //  The background color itself.
	COLORREF color_text; //  Color of the font.
)"

define(INPUTBOX_DEFAULT,INT_MIN)

define(LineNumberType,"UINT")
define(FileIndexType,"WORD") ;  Use WORD to conserve memory due to its use in the Line class (adjacency to other members and due to 4-byte struct alignment).
define(ABSOLUTE_MAX_SOURCE_FILES,0xFFFF) ;  Keep this in sync with the capacity of the type above.  Actually it could hold 0xFFFF+1, but avoid the final item for maintainability (otherwise max-index won't be able to fit inside a variable of that type).

define(LOADING_FAILED,UINT_MAX)

;  -2 for the beginning and ending g_DerefChars:
define(MAX_VAR_NAME_LENGTH,UCHAR_MAX - 2)
define(MAX_FUNCTION_PARAMS,UCHAR_MAX) ;  Also conserves stack space to support future attributes such as param default values.
define(MAX_DEREFS_PER_ARG,512)

define(DerefLengthType,"WORD") ;  WORD might perform better than UCHAR, but this can be changed to UCHAR if another field is ever needed in the struct.
define(DerefParamCountType,"UCHAR")
define(DEREF_VARIADIC,2)
DerefType := "
(
	LPTSTR marker;
	union
	{
		Var *var;
		Func *func;
	};
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	BYTE is_function;

	DerefParamCountType param_count; //  The actual number of parameters present in this function *call*.  Left uninitialized except for functions.
	DerefLengthType length; //  Listed only after byte-sized fields, due to it being a WORD.
)"

define(ArgTypeType,"UCHAR")  ;UCHAR vs. an enum, to save memory.
define(ARG_TYPE_NORMAL,0)
define(ARG_TYPE_INPUT_VAR,1)
define(ARG_TYPE_OUTPUT_VAR,2)

ArgStruct := "
(
	ArgTypeType type;
	bool is_expression; //  Whether this ARG is known to contain an expression.
	//  Above are kept adjacent to each other to conserve memory (any fields that aren't an even
	//  multiple of 4, if adjacent to each other, consume less memory due to default byte alignment
	//  setting [which helps performance]).
	WORD length; //  Keep adjacent to above so that it uses no extra memory. This member was added in v1.0.44.14 to improve runtime performance.  It relies on the fact that an arg's literal text can't be longer than LINE_SIZE.
	LPTSTR text;
	DerefType *deref;  //  Will hold a NULL-terminated array of var-deref locations within <text>.
	ExprTokenType *postfix;  //  An array of tokens in postfix order. Also used for ACT_ADD and others to store pre-converted binary integers.
)"


;  Some of these lengths and such are based on the MSDN example at
;  http:; msdn.microsoft.com/library/default.asp?url=/library/en-us/sysinfo/base/enumerating_registry_subkeys.asp:
;  FIX FOR v1.0.48: 
;  OLDER (v1.0.44.07): Someone reported that a stack overflow was possible, implying that it only happens
;  during extremely deep nesting of subkey names (perhaps a hundred or more nested subkeys).  Upon review, it seems
;  that the prior limit of 16383 for value-name-length is higher than needed; testing shows that a value name can't
;  be longer than 259 (limit might even be 255 if API vs. RegEdit is used to create the name).  Testing also shows
;  that the total path name of a registry item (including item/value name but excluding the name of the root key)
;  obeys the same limit BUT ONLY within the RegEdit GUI.  RegEdit seems capable of importing subkeys whose names
;  (even without any value name appended) are longer than 259 characters (see comments higher above).
define(MAX_REG_ITEM_SIZE,1024) ;  Needs to be greater than 260 (see comments above), but I couldn't find any documentation at MSDN or the web about the max length of a subkey name.  One example at MSDN RegEnumKeyEx() uses MAX_KEY_LENGTH=255 and MAX_VALUE_NAME=16383, but clearly MAX_KEY_LENGTH should be larger.
define(REG_SUBKEY,-2) ;  Custom type, not standard in Windows.
RegItemStruct := "
(
	HKEY root_key_type, root_key; //  root_key_type is always a local HKEY, whereas root_key can be a remote handle.
	TCHAR subkey[" MAX_REG_ITEM_SIZE "]; //  The branch of the registry where this subkey or value is located.
	TCHAR name[" MAX_REG_ITEM_SIZE "]; //  The subkey or value name.
	DWORD type; //  Value Type (e.g REG_DWORD).
	FILETIME ftLastWriteTime; //  Non-initialized.
)"
define(READ_FILE_LINE_SIZE,64 * 1024)  ;  This is also used by FileReadLine().
LoopReadFileStruct := "
(
	TextStream *mReadFile, *mWriteFile;
	TCHAR mWriteFileName[" MAX_PATH "];
	TCHAR mCurrentLine[" READ_FILE_LINE_SIZE "];
)"

;  TextStream flags for LoadIncludedFile (script files), file-reading loops and FileReadLine.
;  Do not lock read/write: older versions used fopen(), which is implicitly permissive.
;~ define(DEFAULT_READ_FLAGS (TextStream::READ | TextStream::EOL_CRLF | TextStream::EOL_ORPHAN_CR | TextStream::SHARE_READ | TextStream::SHARE_WRITE)


define(ArgCountType,"UCHAR")
define(MAX_ARGS,20)   ;  Maximum number of args used by any command.


;enum DllArgTypes {
	  DLL_ARG_INVALID:=0
	, DLL_ARG_ASTR:=1
	, DLL_ARG_INT:=2
	, DLL_ARG_SHORT:=3
	, DLL_ARG_CHAR:=4
	, DLL_ARG_INT64:=5
	, DLL_ARG_FLOAT:=6
	, DLL_ARG_DOUBLE:=7
	, DLL_ARG_WSTR:=8
	, DLL_ARG_STR  := A_IsUnicode ? DLL_ARG_WSTR : DLL_ARG_ASTR
	, DLL_ARG_xSTR := A_IsUnicode ? DLL_ARG_ASTR : DLL_ARG_WSTR ;  To simplify some sections.
  ;  Some sections might rely on DLL_ARG_INVALID being 0.


;  Note that currently this value must fit into a sc_type variable because that is how TextToKey()
;  stores it in the hotkey class.  sc_type is currently a UINT, and will always be at least a
;  WORD in size, so it shouldn't be much of an issue:
define(MAX_JOYSTICKS,16)  ;  The maximum allowed by any Windows operating system.
define(MAX_JOY_BUTTONS,32) ;  Also the max that Windows supports.
;enum JoyControls {
JOYCTRL_INVALID:=0, JOYCTRL_XPOS:=1, JOYCTRL_YPOS:=2, JOYCTRL_ZPOS:=3
, JOYCTRL_RPOS:=4, JOYCTRL_UPOS:=5, JOYCTRL_VPOS:=6, JOYCTRL_POV:=7
, JOYCTRL_NAME:=8, JOYCTRL_BUTTONS:=9, JOYCTRL_AXES:=10, JOYCTRL_INFO:=11
, JOYCTRL_1:=12, JOYCTRL_2:=13, JOYCTRL_3:=14, JOYCTRL_4:=15, JOYCTRL_5:=16, JOYCTRL_6:=17, JOYCTRL_7:=18, JOYCTRL_8  :=19 ;  Buttons.
, JOYCTRL_9:=20, JOYCTRL_10:=21, JOYCTRL_11:=22, JOYCTRL_12:=23, JOYCTRL_13:=24, JOYCTRL_14:=25, JOYCTRL_15:=26, JOYCTRL_16:=27
, JOYCTRL_17:=28, JOYCTRL_18:=29, JOYCTRL_19:=30, JOYCTRL_20:=31, JOYCTRL_21:=32, JOYCTRL_22:=33, JOYCTRL_23:=34, JOYCTRL_24:=35
, JOYCTRL_25:=36, JOYCTRL_26:=37, JOYCTRL_27:=38, JOYCTRL_28:=39, JOYCTRL_29:=40, JOYCTRL_30:=41, JOYCTRL_31:=42, JOYCTRL_32:=43
, JOYCTRL_BUTTON_MAX := JOYCTRL_32

IS_JOYSTICK_BUTTON(joy){
	global
	Return (joy >= JOYCTRL_1 && joy <= JOYCTRL_BUTTON_MAX)
}

;enum WinGetCmds {
WINGET_CMD_INVALID:=0, WINGET_CMD_ID:=1, WINGET_CMD_IDLAST:=2, WINGET_CMD_PID:=3, WINGET_CMD_PROCESSNAME:=4
	, WINGET_CMD_COUNT:=5, WINGET_CMD_LIST:=6, WINGET_CMD_MINMAX:=7, WINGET_CMD_CONTROLLIST:=8, WINGET_CMD_CONTROLLISTHWND:=9
	, WINGET_CMD_STYLE:=10, WINGET_CMD_EXSTYLE:=11, WINGET_CMD_TRANSPARENT:=12, WINGET_CMD_TRANSCOLOR:=13, WINGET_CMD_PROCESSPATH:=14


;enum SysGetCmds {
SYSGET_CMD_INVALID:=0, SYSGET_CMD_METRICS:=1, SYSGET_CMD_MONITORCOUNT:=2, SYSGET_CMD_MONITORPRIMARY:=3
	, SYSGET_CMD_MONITORAREA:=4, SYSGET_CMD_MONITORWORKAREA:=5, SYSGET_CMD_MONITORNAME:=6
;enum TransformCmds {
TRANS_CMD_INVALID:=0, TRANS_CMD_ASC:=1, TRANS_CMD_CHR:=2, TRANS_CMD_DEREF:=3
	, TRANS_CMD_UNICODE:=4, TRANS_CMD_HTML:=5
	, TRANS_CMD_MOD:=6, TRANS_CMD_POW:=7, TRANS_CMD_EXP:=8, TRANS_CMD_SQRT:=9, TRANS_CMD_LOG:=10, TRANS_CMD_LN:=11
	, TRANS_CMD_ROUND:=12, TRANS_CMD_CEIL:=13, TRANS_CMD_FLOOR:=14, TRANS_CMD_ABS:=15
	, TRANS_CMD_SIN:=16, TRANS_CMD_COS:=17, TRANS_CMD_TAN:=18, TRANS_CMD_ASIN:=19, TRANS_CMD_ACOS:=20, TRANS_CMD_ATAN:=21
	, TRANS_CMD_BITAND:=22, TRANS_CMD_BITOR:=23, TRANS_CMD_BITXOR:=24, TRANS_CMD_BITNOT:=25
	, TRANS_CMD_BITSHIFTLEFT:=26, TRANS_CMD_BITSHIFTRIGHT:=27

;enum MenuCommands {
MENU_CMD_INVALID:=0, MENU_CMD_SHOW:=1, MENU_CMD_USEERRORLEVEL:=2
	, MENU_CMD_ADD:=5, MENU_CMD_RENAME:=6, MENU_CMD_CHECK:=7, MENU_CMD_UNCHECK:=8, MENU_CMD_TOGGLECHECK:=9
	, MENU_CMD_ENABLE:=10, MENU_CMD_DISABLE:=11, MENU_CMD_TOGGLEENABLE:=12
	, MENU_CMD_STANDARD:=13, MENU_CMD_NOSTANDARD:=14, MENU_CMD_COLOR:=15, MENU_CMD_DEFAULT:=16, MENU_CMD_NODEFAULT:=17
	, MENU_CMD_DELETE:=20, MENU_CMD_DELETEALL:=21, MENU_CMD_TIP:=22, MENU_CMD_ICON:=23, MENU_CMD_NOICON:=24
	, MENU_CMD_CLICK:=25, MENU_CMD_MAINWINDOW:=26, MENU_CMD_NOMAINWINDOW:=27

define(AHK_LV_SELECT,0x0100)
define(AHK_LV_DESELECT,0x0200)
define(AHK_LV_FOCUS,0x0400)
define(AHK_LV_DEFOCUS,0x0800)
define(AHK_LV_CHECK,0x1000)
define(AHK_LV_UNCHECK,0x2000)
define(AHK_LV_DROPHILITE,0x4000)
define(AHK_LV_UNDROPHILITE,0x8000)
;  Although there's no room remaining in the BYTE for LVIS_CUT (AHK_LV_CUT) [assuming it's ever needed],
;  it might be possible to squeeze more info into it as follows:
;  Each pair of bits can represent three values (other than zero).  But since only two values are needed
;  (since an item can't be both selected an deselected simultaneously), one value in each pair is available
;  for future use such as LVIS_CUT.

;enum GuiCommands {
GUI_CMD_INVALID:=0, GUI_CMD_OPTIONS:=1, GUI_CMD_ADD:=2, GUI_CMD_MARGIN:=3, GUI_CMD_MENU:=4
	, GUI_CMD_SHOW:=5, GUI_CMD_SUBMIT:=6, GUI_CMD_CANCEL:=7, GUI_CMD_MINIMIZE:=8, GUI_CMD_MAXIMIZE:=9, GUI_CMD_RESTORE:=10
	, GUI_CMD_DESTROY:=11, GUI_CMD_FONT:=12, GUI_CMD_TAB:=13, GUI_CMD_LISTVIEW:=14, GUI_CMD_TREEVIEW:=15, GUI_CMD_DEFAULT:=16
	, GUI_CMD_COLOR:=17, GUI_CMD_FLASH:=18


;enum GuiControlCmds {
GUICONTROL_CMD_INVALID:=0, GUICONTROL_CMD_OPTIONS:=1, GUICONTROL_CMD_CONTENTS:=2, GUICONTROL_CMD_TEXT:=3
	, GUICONTROL_CMD_MOVE:=4, GUICONTROL_CMD_MOVEDRAW:=5, GUICONTROL_CMD_FOCUS:=6, GUICONTROL_CMD_ENABLE:=7, GUICONTROL_CMD_DISABLE:=8
	, GUICONTROL_CMD_SHOW:=9, GUICONTROL_CMD_HIDE:=10, GUICONTROL_CMD_CHOOSE:=11, GUICONTROL_CMD_CHOOSESTRING:=12
	, GUICONTROL_CMD_FONT:=13


;enum GuiControlGetCmds {
GUICONTROLGET_CMD_INVALID:=0, GUICONTROLGET_CMD_CONTENTS:=1, GUICONTROLGET_CMD_POS:=2
	, GUICONTROLGET_CMD_FOCUS:=3, GUICONTROLGET_CMD_FOCUSV:=4, GUICONTROLGET_CMD_ENABLED:=5, GUICONTROLGET_CMD_VISIBLE:=6
	, GUICONTROLGET_CMD_HWND:=7


define(GuiControls,"UCHAR")
;enum GuiControlTypes {
GUI_CONTROL_INVALID:=0 ;  GUI_CONTROL_INVALID must be zero due to things like ZeroMemory() on the struct.
	, GUI_CONTROL_TEXT:=1, GUI_CONTROL_PIC:=2, GUI_CONTROL_GROUPBOX:=3
	, GUI_CONTROL_BUTTON:=4, GUI_CONTROL_CHECKBOX:=5, GUI_CONTROL_RADIO:=6
	, GUI_CONTROL_DROPDOWNLIST:=7, GUI_CONTROL_COMBOBOX:=8
	, GUI_CONTROL_LISTBOX:=9, GUI_CONTROL_LISTVIEW:=10, GUI_CONTROL_TREEVIEW:=11
	, GUI_CONTROL_EDIT:=12, GUI_CONTROL_DATETIME:=13, GUI_CONTROL_MONTHCAL:=14, GUI_CONTROL_HOTKEY:=15
	, GUI_CONTROL_UPDOWN:=16, GUI_CONTROL_SLIDER:=17, GUI_CONTROL_PROGRESS:=18, GUI_CONTROL_TAB:=19, GUI_CONTROL_TAB2:=20
	, GUI_CONTROL_STATUSBAR:=21 ;  Kept last to reflect it being bottommost in switch()s (for perf), since not too often used.

;enum ThreadCommands {
THREAD_CMD_INVALID:=0, THREAD_CMD_PRIORITY:=1, THREAD_CMD_INTERRUPT:=2, THREAD_CMD_NOTIMERS:=3

define(PROCESS_PRIORITY_LETTERS,"LBNAHR")
;enum ProcessCmds {
PROCESS_CMD_INVALID:=0, PROCESS_CMD_EXIST:=1, PROCESS_CMD_CLOSE:=2, PROCESS_CMD_PRIORITY:=3
	, PROCESS_CMD_WAIT:=4, PROCESS_CMD_WAITCLOSE:=5

;enum ControlCmds {
CONTROL_CMD_INVALID:=0, CONTROL_CMD_CHECK:=1, CONTROL_CMD_UNCHECK:=2
	, CONTROL_CMD_ENABLE:=3, CONTROL_CMD_DISABLE:=4, CONTROL_CMD_SHOW:=5, CONTROL_CMD_HIDE:=6
	, CONTROL_CMD_STYLE:=7, CONTROL_CMD_EXSTYLE:=8
	, CONTROL_CMD_SHOWDROPDOWN:=9, CONTROL_CMD_HIDEDROPDOWN:=10
	, CONTROL_CMD_TABLEFT:=11, CONTROL_CMD_TABRIGHT:=12
	, CONTROL_CMD_ADD:=13, CONTROL_CMD_DELETE:=14, CONTROL_CMD_CHOOSE:=15
	, CONTROL_CMD_CHOOSESTRING:=16, CONTROL_CMD_EDITPASTE:=17

;enum ControlGetCmds {
CONTROLGET_CMD_INVALID:=0, CONTROLGET_CMD_CHECKED:=1, CONTROLGET_CMD_ENABLED:=2
	, CONTROLGET_CMD_VISIBLE:=3, CONTROLGET_CMD_TAB:=4, CONTROLGET_CMD_FINDSTRING:=5
	, CONTROLGET_CMD_CHOICE:=6, CONTROLGET_CMD_LIST:=7, CONTROLGET_CMD_LINECOUNT:=8, CONTROLGET_CMD_CURRENTLINE:=9
	, CONTROLGET_CMD_CURRENTCOL:=10, CONTROLGET_CMD_LINE:=11, CONTROLGET_CMD_SELECTED:=12
	, CONTROLGET_CMD_STYLE:=13, CONTROLGET_CMD_EXSTYLE:=14, CONTROLGET_CMD_HWND:=15

;enum DriveCmds {
DRIVE_CMD_INVALID:=0, DRIVE_CMD_EJECT:=1, DRIVE_CMD_LOCK:=2, DRIVE_CMD_UNLOCK:=3, DRIVE_CMD_LABEL:=4

;enum DriveGetCmds {
DRIVEGET_CMD_INVALID:=0, DRIVEGET_CMD_LIST:=1, DRIVEGET_CMD_FILESYSTEM:=2, DRIVEGET_CMD_LABEL:=3
	, DRIVEGET_CMD_SETLABEL:=4, DRIVEGET_CMD_SERIAL:=5, DRIVEGET_CMD_TYPE:=6, DRIVEGET_CMD_STATUS:=7
	, DRIVEGET_CMD_STATUSCD:=8, DRIVEGET_CMD_CAPACITY:=9

;enum WinSetAttributes {
WINSET_INVALID:=0, WINSET_TRANSPARENT:=1, WINSET_TRANSCOLOR:=2, WINSET_ALWAYSONTOP:=3
	, WINSET_BOTTOM:=4, WINSET_TOP:=5, WINSET_STYLE:=6, WINSET_EXSTYLE:=7, WINSET_REDRAW:=8, WINSET_ENABLE:=9, WINSET_DISABLE:=10
	, WINSET_REGION:=11

;  Bitwise flags:
define(FSF_ALLOW_CREATE,0x01)
define(FSF_EDITBOX,0x02)
define(FSF_NONEWDIALOG,0x04)
define(SW_NONE,-1)

;  Shouldn't go much higher than 400 since the main window's Edit control is currently limited
;  to 64KB to be compatible with the Win9x limit.  Avg. line length is probably under 100 for
;  the vast majority of scripts, so 400 seems unlikely to exceed the buffer size.  Even in the
;  worst case where the buffer size is exceeded, the text is simply truncated, so it's not too bad:
define(LINE_LOG_SIZE,400)  ;  See above.

Line := "
(
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	ActionTypeType mActionType; //  What type of line this is.
	ArgCountType mArgc; //  How many arguments exist in mArg[].
	FileIndexType mFileIndex; //  Which file the line came from.  0 is the first, and it's the main script file.
	LineNumberType mLineNumber; //  The line number in the file from which the script was loaded, for debugging.

	ArgStruct *mArg; //  Will be used to hold a dynamic array of dynamic Args.
	AttributeType mAttribute;
	Line *mPrevLine, *mNextLine; //  The prev & next lines adjacent to this one in the linked list; NULL if none.
	Line *mRelatedLine; //  e.g. the 'else' that belongs to this 'if'
	Line *mParentLine; //  Indicates the parent (owner) of this line.
)"



Label := "
(
	LPTSTR mName;
	Line *mJumpToLine;
	Label *mPrevLabel, *mNextLabel; //  Prev & Next items in linked list.
)"


;enum FuncParamDefaults {
PARAM_DEFAULT_NONE:=0, PARAM_DEFAULT_STR:=1, PARAM_DEFAULT_INT:=2, PARAM_DEFAULT_FLOAT

FuncParam := "
(
	Var *var;
	WORD is_byref; //  Boolean, but defined as WORD in case it helps data alignment and/or performance (BOOL vs. WORD didn't help benchmarks).
	WORD default_type;
	union {LPTSTR default_str; __int64 default_int64; double default_double;};
)"

FuncCallData := "
(
	Func *mFunc; //  If non-NULL, indicates this is a UDF whose vars will need to be freed/restored later.
	VarBkp *mBackup; //  For UDFs.
	int mBackupCount;
)"

define(mDefaultVarType,"UCHAR") ;
;  Keep small members adjacent to each other to save space and improve perf. due to byte alignment:
define(VAR_DECLARE_NONE,0)
define(VAR_DECLARE_GLOBAL,1)
define(VAR_DECLARE_LOCAL,2)
define(VAR_DECLARE_STATIC,3)
Func := "
(
	LPTSTR mName;
	union {BuiltInFunctionType mBIF; Line *mJumpToLine;};
	FuncParam *mParam;  //  Will hold an array of FuncParams.
	int mParamCount; //  The number of items in the above array.  This is also the function's maximum number of params.
	int mMinParams;  //  The number of mandatory parameters (populated for both UDFs and built-in's).
	Var **mVar, **mLazyVar; //  Array of pointers-to-variable, allocated upon first use and later expanded as needed.
	int mVarCount, mVarCountMax, mLazyVarCount; //  Count of items in the above array as well as the maximum capacity.
	int mInstances; //  How many instances currently exist on the call stack (due to recursion or thread interruption).  Future use: Might be used to limit how deep recursion can go to help prevent stack overflow.

	bool mIsBuiltIn; //  Determines contents of union. Keep this member adjacent/contiguous with the above.
	//  Note that it's possible for a built-in function such as WinExist() to become a normal/UDF via
	//  override in the script.  So mIsBuiltIn should always be used to determine whether the function
	//  is truly built-in, not its name.
	bool mIsVariadic;
)"



ScriptTimer := "
(
	Label *mLabel;
	DWORD mPeriod; //  v1.0.36.33: Changed from int to DWORD to double its capacity.
	DWORD mTimeLastRun;  //  TickCount
	int mPriority;  //  Thread priority relative to other threads, default 0.
	UCHAR mExistingThreads;  //  Whether this timer is already running its subroutine.
	bool mEnabled;
	bool mRunOnlyOnce;
	ScriptTimer *mNextTimer;  //  Next items in linked list
)"


MsgMonitorStruct := "
(
	Func *func;
	UINT msg;
	//  Keep any members smaller than 4 bytes adjacent to save memory:
	short instance_count;  //  Distinct from func.mInstances because the script might have called the function explicitly.
	short max_instances; //  v1.0.47: Support more than one thread.
)"



define(MAX_MENU_NAME_LENGTH,MAX_PATH) ;  For both menu and menu item names.
UserMenu := "
(
	LPTSTR mName;  //  Dynamically allocated.
	UserMenuItem *mFirstMenuItem, *mLastMenuItem, *mDefault;
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	bool mIncludeStandardItems;
	int mClickCount; //  How many clicks it takes to trigger the default menu item.  2 = double-click
	UINT mMenuItemCount;  //  The count of user-defined menu items (doesn't include the standard items, if present).
	UserMenu *mNextMenu;  //  Next item in linked list
	HMENU mMenu;
	MenuTypeType mMenuType; //  MENU_TYPE_POPUP (via CreatePopupMenu) vs. MENU_TYPE_BAR (via CreateMenu).
	HBRUSH mBrush;   //  Background color to apply to menu.
	COLORREF mColor; //  The color that corresponds to the above.
)"


UserMenuItem := "
(
	LPTSTR mName;  //  Dynamically allocated.
	size_t mNameCapacity;
	UINT mMenuID;
	Label *mLabel;
	UserMenu *mSubmenu;
	UserMenu *mMenu;  //  The menu to which this item belongs.  Needed to support script var A_ThisMenu.
	int mPriority;
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	bool mEnabled, mChecked;
	UserMenuItem *mNextMenuItem;  //  Next item in linked list
	
	union
	{
		//  L17: Implementation of menu item icons is OS-dependent (g_os.IsWinVistaOrLater()).
		
		//  Older versions of Windows do not support alpha channels in menu item bitmaps, so owner-drawing
		//  must be used for icons with transparent backgrounds to appear correctly. Owner-drawing also
		//  prevents the icon colours from inverting when the item is selected. DrawIcon() gives the best
		//  results, so we store the icon handle as is.
		// 
		HICON mIcon;
		
		//  Windows Vista and later support alpha channels via 32-bit bitmaps. Since owner-drawing prevents
		//  visual styles being applied to menus, we convert each icon to a 32-bit bitmap, calculating the
		//  alpha channel as necessary. This is done only once, when the icon is initially set.
		// 
		HBITMAP mBitmap;
	};
)"


define(MAX_FONT_NAME_LENGTH,63)  ;  Longest name I've seen is 29 chars, "Franklin Gothic Medium Italic". Anyway, there's protection against overflow.
FontType := "
(
	
	TCHAR name[MAX_FONT_NAME_LENGTH + 1];
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	bool italic;
	bool underline;
	bool strikeout;
	int point_size; //  Decided to use int vs. float to simplify the code in many places. Fractional sizes seem rarely needed.
	int weight;
	DWORD quality; //  L19: Allow control over font quality (anti-aliasing, etc.).
	HFONT hfont;
)"


define(LV_REMOTE_BUF_SIZE,1024)  ;  8192 (below) seems too large in hindsight, given that an LV can only display the first 260 chars in a field.
define(LV_TEXT_BUF_SIZE,8192)  ;  Max amount of text in a ListView sub-item.  Somewhat arbitrary: not sure what the real limit is, if any.

;enum LVColTypes {
LV_COL_TEXT:=0, LV_COL_INTEGER:=1, LV_COL_FLOAT:=2 ;  LV_COL_TEXT must be zero so that it's the default with ZeroMemory.
lv_col_type := "
(
	UCHAR type;             //  UCHAR vs. enum LVColTypes to save memory.
	bool sort_disabled;     //  If true, clicking the column will have no automatic sorting effect.
	UCHAR case_sensitive;   //  Ignored if type isn't LV_COL_TEXT.  SCS_INSENSITIVE is the default.
	bool unidirectional;    //  Sorting cannot be reversed/toggled.
	bool prefer_descending; //  Whether this column defaults to descending order (on first click or for unidirectional).
)"
define(LV_MAX_COLUMNS,200)
lv_attrib_type := "
(
	int sorted_by_col; //  Index of column by which the control is currently sorted (-1 if none).
	bool is_now_sorted_ascending; //  The direction in which the above column is currently sorted.
	bool no_auto_sort; //  Automatic sorting disabled.
	lv_col_type col[" LV_MAX_COLUMNS "];
	int col_count; //  Number of columns currently in the above array.
	int row_count_hint;
)"

define(TabControlIndexType,"UCHAR")
define(TabIndexType,"UCHAR")
;  Keep the below in sync with the size of the types above:
define(MAX_TAB_CONTROLS,255)  ;  i.e. the value 255 itself is reserved to mean "doesn't belong to a tab".
define(MAX_TABS_PER_CONTROL,256)
define(GUI_CONTROL_ATTRIB_IMPLICIT_CANCEL,0x01)
define(GUI_CONTROL_ATTRIB_ALTSUBMIT,0x02)
define(GUI_CONTROL_ATTRIB_LABEL_IS_RUNNING,0x04)
define(GUI_CONTROL_ATTRIB_EXPLICITLY_HIDDEN,0x08)
define(GUI_CONTROL_ATTRIB_EXPLICITLY_DISABLED,0x10)
define(GUI_CONTROL_ATTRIB_BACKGROUND_DEFAULT,0x20) ;  i.e. Don't conform to window/control background color; use default instead.
define(GUI_CONTROL_ATTRIB_BACKGROUND_TRANS,0x40) ;  i.e. Leave this control's background transparent.
define(GUI_CONTROL_ATTRIB_ALTBEHAVIOR,0x80) ;  For sliders: Reverse/Invert the value. Also for up-down controls (ALT means 32-bit vs. 16-bit). Also for ListView and Tab, and for Edit.
GuiControlType := "
(
	HWND hwnd;
	//  Keep any fields that are smaller than 4 bytes adjacent to each other.  This conserves memory
	//  due to byte-alignment.  It has been verified to save 4 bytes per struct in this case:
	GuiControls type;
	
	UCHAR attrib; //  A field of option flags/bits defined above.
	TabControlIndexType tab_control_index; //  Which tab control this control belongs to, if any.
	TabIndexType tab_index; //  For type==TAB, this stores the tab control's index.  For other types, it stores the page.
	Var *output_var;
	Label *jump_to_label;
	union
	{
		COLORREF union_color;  //  Color of the control's text.
		HBITMAP union_hbitmap; //  For PIC controls, stores the bitmap.
		//  Note: Pic controls cannot obey the text color, but they can obey the window's background
		//  color if the picture's background is transparent (at least in the case of icons on XP).
		lv_attrib_type *union_lv_attrib; //  For ListView: Some attributes and an array of columns.
	};
)"

define(GUI_MAX_TABSTOPS,50)
GuiControlOptionsType := "
(
	DWORD style_add, style_remove, exstyle_add, exstyle_remove, listview_style;
	int listview_view; //  Viewing mode, such as LVS_ICON, LVS_REPORT.  Int vs. DWORD to more easily use any negative value as 'invalid'.
	HIMAGELIST himagelist;
	Var *hwnd_output_var; //  v1.0.46.01: Allows a script to retrieve the control's HWND upon creation of control.
	int x, y, width, height;  //  Position info.
	float row_count;
	int choice;  //  Which item of a DropDownList/ComboBox/ListBox to initially choose.
	int range_min, range_max;  //  Allowable range, such as for a slider control.
	int tick_interval; //  The interval at which to draw tickmarks for a slider control.
	int line_size, page_size; //  Also for slider.
	int thickness;  //  Thickness of slider's thumb.
	int tip_side; //  Which side of the control to display the tip on (0 to use default side).
	GuiControlType *buddy1, *buddy2;
	COLORREF color_listview; //  Used only for those controls that need control.union_color for something other than color.
	COLORREF color_bk; //  Control's background color.
	int limit;   //  The max number of characters to permit in an edit or combobox's edit (also used by ListView).
	int hscroll_pixels;  //  The number of pixels for a listbox's horizontal scrollbar to be able to scroll.
	int checked; //  When zeroed, struct contains default starting state of checkbox/radio, i.e. BST_UNCHECKED.
	int icon_number; //  Which icon of a multi-icon file to use.  Zero means use-default, i.e. the first icon.
	UINT tabstop[GUI_MAX_TABSTOPS]; //  Array of tabstops for the interior of a multi-line edit control.
	UINT tabstop_count;  //  The number of entries in the above array.
	SYSTEMTIME sys_time[2]; //  Needs to support 2 elements for MONTHCAL's multi/range mode.
	SYSTEMTIME sys_time_range[2];
	DWORD gdtr, gdtr_range; //  Used in connection with sys_time and sys_time_range.
	ResultType redraw;  //  Whether the state of WM_REDRAW should be changed.
	TCHAR password_char; //  When zeroed, indicates 'use default password' for an edit control with the password style.
	bool range_changed;
	bool color_changed; //  To discern when a control has been put back to the default color. [v1.0.26]
	bool start_new_section;
	bool use_theme; //  v1.0.32: Provides the means for the window's current setting of mUseTheme to be overridden.
	bool listview_no_auto_sort; //  v1.0.44: More maintainable and frees up GUI_CONTROL_ATTRIB_ALTBEHAVIOR for other uses.
)"


define(GUI_STANDARD_WIDTH_MULTIPLIER,15) ;  This times font size = width, if all other means of determining it are exhausted.

;  Update for v1.0.21: Reduced it to 8 vs. 9 because 8 causes the height each edit (with the
;  default style) to exactly match that of a Combo or DropDownList.  This type of spacing seems
;  to be what other apps use too, and seems to make edits stand out a little nicer:
define(GUI_CTL_VERTICAL_DEADSPACE,8)
define(MAX_GUI_FONTS,200)  ;  v1.0.44.14: Increased from 100 to 200 due to feedback that 100 wasn't enough.  But to alleviate memory usage, the array is now allocated upon first use.

GuiType := "
(
	HWND mHwnd, mStatusBarHwnd;
	//  Control IDs are higher than their index in the array by the below amount.  This offset is
	//  necessary because windows that behave like dialogs automatically return IDOK and IDCANCEL in
	//  response to certain types of standard actions:
	GuiIndexType mWindowIndex;
	GuiIndexType mControlCount;
	GuiIndexType mControlCapacity; //  How many controls can fit into the current memory size of mControl.
	GuiControlType *mControl; //  Will become an array of controls when the window is first created.
	GuiIndexType mDefaultButtonIndex; //  Index vs. pointer is needed for some things.
	Label *mLabelForClose, *mLabelForEscape, *mLabelForSize, *mLabelForDropFiles, *mLabelForContextMenu;
	bool mLabelForCloseIsRunning, mLabelForEscapeIsRunning, mLabelForSizeIsRunning; //  DropFiles doesn't need one of these.
	bool mLabelsHaveBeenSet;
	DWORD mStyle, mExStyle; //  Style of window.
	bool mInRadioGroup; //  Whether the control currently being created is inside a prior radio-group.
	bool mUseTheme;  //  Whether XP theme and styles should be applied to the parent window and subsequently added controls.
	HWND mOwner;  //  The window that owns this one, if any.  Note that Windows provides no way to change owners after window creation.
	TCHAR mDelimiter;  //  The default field delimiter when adding items to ListBox, DropDownList, ListView, etc.
	int mCurrentFontIndex;
	GuiControlType *mCurrentListView, *mCurrentTreeView; //  The ListView and TreeView upon which the LV/TV functions operate.
	TabControlIndexType mTabControlCount;
	TabControlIndexType mCurrentTabControlIndex; //  Which tab control of the window.
	TabIndexType mCurrentTabIndex; //  Which tab of a tab control is currently the default for newly added controls.
	COLORREF mCurrentColor;       //  The default color of text in controls.
	COLORREF mBackgroundColorWin; //  The window's background color itself.
	HBRUSH mBackgroundBrushWin;   //  Brush corresponding to the above.
	COLORREF mBackgroundColorCtl; //  Background color for controls.
	HBRUSH mBackgroundBrushCtl;   //  Brush corresponding to the above.
	HDROP mHdrop;                 //  Used for drag and drop operations.
	HICON mIconEligibleForDestruction; //  The window's icon, which can be destroyed when the window is destroyed if nothing else is using it.
	HICON mIconEligibleForDestructionSmall; //  L17: A window may have two icons: ICON_SMALL and ICON_BIG.
	int mMarginX, mMarginY, mPrevX, mPrevY, mPrevWidth, mPrevHeight, mMaxExtentRight, mMaxExtentDown
		, mSectionX, mSectionY, mMaxExtentRightSection, mMaxExtentDownSection;
	LONG mMinWidth, mMinHeight, mMaxWidth, mMaxHeight;
	bool mGuiShowHasNeverBeenDone, mFirstActivation, mShowIsInProgress, mDestroyWindowHasBeenCalled;
	bool mControlWidthWasSetByContents; //  Whether the most recently added control was auto-width'd to fit its contents.
)"

define(MAX_NESTED_CLASSES,5)
define(MAX_CLASS_NAME_LENGTH,UCHAR_MAX)
Script := "
(
	Var **mVar, **mLazyVar; //  Array of pointers-to-variable, allocated upon first use and later expanded as needed.
	int mVarCount, mVarCountMax, mLazyVarCount; //  Count of items in the above array as well as the maximum capacity.
	WinGroup *mFirstGroup, *mLastGroup;  //  The first and last variables in the linked list.
	int mCurrentFuncOpenBlockCount; //  While loading the script, this is how many blocks are currently open in the current function's body.
	bool mNextLineIsFunctionBody; //  Whether the very next line to be added will be the first one of the body.
	Var **mFuncExceptionVar;   //  A list of variables declared explicitly local or global.
	int mFuncExceptionVarCount; //  The number of items in the array.

	int mClassObjectCount;
	Object *mClassObject[" MAX_NESTED_CLASSES "]; //  Class definition currently being parsed.
	TCHAR mClassName[" (MAX_CLASS_NAME_LENGTH + 1) "]; //  Only used during load-time.

	//  These two track the file number and line number in that file of the line currently being loaded,
	//  which simplifies calls to ScriptError() and LineError() (reduces the number of params that must be passed).
	//  These are used ONLY while loading the script into memory.  After that (while the script is running),
	//  only mCurrLine is kept up-to-date:
	int mCurrFileIndex;
	LineNumberType mCombinedLineNumber; //  In the case of a continuation section/line(s), this is always the top line.

	bool mNoHotkeyLabels;

	bool mMenuUseErrorLevel;  //  Whether runtime errors should be displayed by the Menu command, vs. ErrorLevel.

	Line *mFirstLine, *mLastLine;     //  The first and last lines in the linked list.
	Line *mFirstStaticLine, *mLastStaticLine; //  The first and last static var initializer.
	Label *mFirstLabel, *mLastLabel;  //  The first and last labels in the linked list.
	Func **mFunc;  //  Binary-searchable array of functions.
	int mFuncCount, mFuncCountMax;
	Line *mTempLine; //  for use with dll Execute # Naveen N9
	Label *mTempLabel; //  for use with dll Execute # Naveen N9
	Func *mTempFunc; //  for use with dll Execute # Naveen N9
)"









/*
define(ByRef DATA,TYPE){
	static _types_:="UCHAR_MAX,LONG_OPERATION_INIT"
	global NULL:=0,FAIL:=0,CHAR_BIT:=8,CHAR_MAX:=127,CHAR_MIN:=0,INT_MAX:=32767,INT_MIN:=-32767,LONG_MAX:=2147483647,LONG_MIN:=-2147483647,MB_LEN_MAX:=1
	,SCHAR_MAX:=127,SCHAR_MIN:=-127,SHRT_MAX:=32767,SHRT_MIN:=-32767,UCHAR_MAX:=255,UINT_MAX:=65535,ULONG_MAX:=4294967295,USHRT_MAX:=65535
	; AHK+Windows data types
	static PTR:=A_PtrSize,UPTR:=A_PtrSize,SHORT:=2,USHORT:=2,INT:=4,UINT:=4,INT64:=8,UINT64:=8,DOUBLE:=8,FLOAT:=4,CHAR:=1,UCHAR:=1,VOID:=A_PtrSize
    ,TBYTE:=A_IsUnicode?2:1,TCHAR:=A_IsUnicode?2:1,HALF_PTR:=A_PtrSize=8?4:2,UHALF_PTR:=A_PtrSize=8?4:2,INT32:=4,LONG:=4,LONG32:=4,LONGLONG:=8
    ,LONG64:=8,USN:=8,HFILE:=A_PtrSize,HRESULT:=A_PtrSize,INT_PTR:=A_PtrSize,LONG_PTR:=A_PtrSize,POINTER_64:=A_PtrSize,POINTER_SIGNED:=A_PtrSize
    ,BOOL:=4,SSIZE_T:=A_PtrSize,WPARAM:=A_PtrSize,BOOLEAN:=1,BYTE:=1,COLORREF:=4,DWORD:=4,DWORD32:=4,LCID:=4,LCTYPE:=4,LGRPID:=4,LRESULT:=4,PBOOL:=4
    ,PBOOLEAN:=4,PBYTE:=4,PCHAR:=4,PCSTR:=4,PCTSTR:=4,PCWSTR:=4,PDWORD:=4,PDWORDLONG:=4,PDWORD_PTR:=4,PDWORD32:=4,PDWORD64:=4,PFLOAT:=4,PHALF_PTR:=4
    ,UINT32:=4,ULONG:=4,ULONG32:=4,DWORDLONG:=8,DWORD64:=8,ULONGLONG:=8,ULONG64:=8,DWORD_PTR:=A_PtrSize,HACCEL:=A_PtrSize,HANDLE:=A_PtrSize
    ,HBITMAP:=A_PtrSize,HBRUSH:=A_PtrSize,HCOLORSPACE:=A_PtrSize,HCONV:=A_PtrSize,HCONVLIST:=A_PtrSize,HCURSOR:=A_PtrSize,HDC:=A_PtrSize
    ,HDDEDATA:=A_PtrSize,HDESK:=A_PtrSize,HDROP:=A_PtrSize,HDWP:=A_PtrSize,HENHMETAFILE:=A_PtrSize,HFONT:=A_PtrSize
  static HGDIOBJ:=A_PtrSize,HGLOBAL:=A_PtrSize,HHOOK:=A_PtrSize,HICON:=A_PtrSize,HINSTANCE:=A_PtrSize,HKEY:=A_PtrSize,HKL:=A_PtrSize
    ,HLOCAL:=A_PtrSize,HMENU:=A_PtrSize,HMETAFILE:=A_PtrSize,HMODULE:=A_PtrSize,HMONITOR:=A_PtrSize,HPALETTE:=A_PtrSize,HPEN:=A_PtrSize
    ,HRGN:=A_PtrSize,HRSRC:=A_PtrSize,HSZ:=A_PtrSize,HWINSTA:=A_PtrSize,HWND:=A_PtrSize,LPARAM:=A_PtrSize,LPBOOL:=A_PtrSize,LPBYTE:=A_PtrSize
    ,LPCOLORREF:=A_PtrSize,LPCSTR:=A_PtrSize,LPCTSTR:=A_PtrSize,LPCVOID:=A_PtrSize,LPCWSTR:=A_PtrSize,LPDWORD:=A_PtrSize,LPHANDLE:=A_PtrSize
    ,LPINT:=A_PtrSize,LPLONG:=A_PtrSize,LPSTR:=A_PtrSize,LPTSTR:=A_PtrSize,LPVOID:=A_PtrSize,LPWORD:=A_PtrSize,LPWSTR:=A_PtrSize,PHANDLE:=A_PtrSize
    ,PHKEY:=A_PtrSize,PINT:=A_PtrSize,PINT_PTR:=A_PtrSize,PINT32:=A_PtrSize,PINT64:=A_PtrSize,PLCID:=A_PtrSize,PLONG:=A_PtrSize,PLONGLONG:=A_PtrSize
    ,PLONG_PTR:=A_PtrSize,PLONG32:=A_PtrSize,PLONG64:=A_PtrSize,POINTER_32:=A_PtrSize,POINTER_UNSIGNED:=A_PtrSize,PSHORT:=A_PtrSize,PSIZE_T:=A_PtrSize
    ,PSSIZE_T:=A_PtrSize,PSTR:=A_PtrSize,PTBYTE:=A_PtrSize,PTCHAR:=A_PtrSize,PTSTR:=A_PtrSize,PUCHAR:=A_PtrSize,PUHALF_PTR:=A_PtrSize,PUINT:=A_PtrSize
    ,PUINT_PTR:=A_PtrSize,PUINT32:=A_PtrSize,PUINT64:=A_PtrSize,PULONG:=A_PtrSize,PULONGLONG:=A_PtrSize,PULONG_PTR:=A_PtrSize,PULONG32:=A_PtrSize
    ,PULONG64:=A_PtrSize,PUSHORT:=A_PtrSize,PVOID:=A_PtrSize,PWCHAR:=A_PtrSize,PWORD:=A_PtrSize,PWSTR:=A_PtrSize,SC_HANDLE:=A_PtrSize
    ,SC_LOCK:=A_PtrSize,SERVICE_STATUS_HANDLE:=A_PtrSize,SIZE_T:=A_PtrSize,UINT_PTR:=A_PtrSize,ULONG_PTR:=A_PtrSize,ATOM:=2,LANGID:=2,WCHAR:=2,WORD:=4
	If (TYPE="") ; default
		Return DATA:=""
	else if TYPE in types
		Return DATA:=%TYPE%
	else
		Return DATA:=TYPE
}

;		DEFINES.H          
define(AHK_NAME,"AutoHotkey")

define(T_AHK_NAME,AHK_NAME)
define(T_AHK_VERSION,AHK_VERSION)
define(T_AHK_NAME_VERSION,T_AHK_NAME " v" A_AhkVersion)

;  Window class names: Changing these may result in new versions not being able to detect any old instances
;  that may be running (such as the use of FindWindow() in WinMain()).  It may also have other unwanted
;  effects, such as anything in the OS that relies on the class name that the user may have changed the
;  settings for, such as whether to hide the tray icon (though it probably doesn't use the class name
;  in that example).
;  MSDN: "Because window classes are process specific, window class names need to be unique only within
;  the same process. Also, because class names occupy space in the system's private atom table, you
;  should keep class name strings as short a possible:
define(WINDOW_CLASS_MAIN,"AutoHotkey")
define(WINDOW_CLASS_SPLASH,"AutoHotkey2")
define(WINDOW_CLASS_GUI,"AutoHotkeyGUI") ;  There's a section in Script::Edit() that relies on these all starting with "AutoHotkey".
define(EXT_AUTOIT2,".aut")
define(EXT_AUTOHOTKEY,".ahk")
define(CONVERSION_FLAG,EXT_AUTOIT2 EXT_AUTOHOTKEY)
define(CONVERSION_FLAG_LENGTH,8)

;  AutoIt2 supports lines up to 16384 characters long, and we want to be able to do so too
;  so that really long lines from aut2 scripts, such as a chain of IF commands, can be
;  brought in and parsed.  In addition, it also allows continuation sections to be long.
define(LINE_SIZE,(16384 + 1))  ;  +1 for terminator.  Don't increase LINE_SIZE above 65535 without considering ArgStruct::length's type (WORD).

;  Items that may be needed for VC++ 6.X:
define(SPI_GETFOREGROUNDLOCKTIMEOUT,0x2000)
define(SPI_SETFOREGROUNDLOCKTIMEOUT,0x2001)
define(VK_XBUTTON1,0x05)    ;/* NOT contiguous with L & RBUTTON */
define(VK_XBUTTON2,0x06)    ;/* NOT contiguous with L & RBUTTON */
define(WM_NCXBUTTONDOWN,0x00AB)
define(WM_NCXBUTTONUP,0x00AC)
define(WM_NCXBUTTONDBLCLK,0x00AD)
define(WM_XBUTTONDOWN,0x020B)
define(WM_XBUTTONUP,0x020C)
define(WM_XBUTTONDBLCLK,0x020D)
;/* XButton values are WORD flags */
define(XBUTTON1,0x0001)
define(XBUTTON2,0x0002)
define(HIMETRIC_INCH,2540)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IS_32BIT(signed_value_64){
	global
	Return (signed_value_64 >= INT_MIN && signed_value_64 <= INT_MAX)
}
GET_BIT(buf,n){
	global
	Return (((buf) & (1 << (n))) >> (n))
}
SET_BIT(buf,n,val){
	global
	Return ((val) ? ((buf) |= (1<<(n))) : (buf &= ~(1<<(n))))
}

;  FAIL = 0 to remind that FAIL should have the value zero instead of something arbitrary
;  because some callers may simply evaluate the return result as true or false
;  (and false is a failure):
FAIL:=0,OK:=1,WARN:=1,CRITICAL_ERROR:=2  	;  Some things might rely on OK==1 (i.e. boolean "true")
	, CONDITION_TRUE:=3, CONDITION_FALSE:=4
	, LOOP_BREAK:=5, LOOP_CONTINUE:=6
	, EARLY_RETURN:=7, EARLY_EXIT:=8 ;  EARLY_EXIT needs to be distinct from FAIL for ExitApp() and AutoExecSection().

SM_EVENT:=0, SM_INPUT:=1, SM_PLAY:=2, SM_INPUT_FALLBACK_TO_PLAY:=3, SM_INVALID:=4 ;  SM_EVENT must be zero.
;  In above, SM_INPUT falls back to SM_EVENT when the SendInput mode would be defeated by the presence
;  of a keyboard/mouse hooks in another script (it does this because SendEvent is superior to a
;  crippled/interruptible SendInput due to SendEvent being able to dynamically adjust to changing
;  conditions [such as the user releasing a modifier key during the Send]).  By contrast,
;  SM_INPUT_FALLBACK_TO_PLAY falls back to the SendPlay mode.  SendInput has this extra fallback behavior
;  because it's likely to become the most popular sending method.

EXIT_NONE:=0, EXIT_CRITICAL:=1, EXIT_ERROR:=2, EXIT_DESTROY:=3, EXIT_LOGOFF:=4, EXIT_SHUTDOWN:=5
	, EXIT_WM_QUIT:=6, EXIT_WM_CLOSE:=7, EXIT_MENU:=8, EXIT_EXIT:=9, EXIT_RELOAD:=10, EXIT_SINGLEINSTANCE:=11

WARN_USE_UNSET_LOCAL:=0, WARN_USE_UNSET_GLOBAL:=1, WARN_LOCAL_SAME_AS_GLOBAL:=2, WARN_USE_ENV:=3, WARN_ALL:=4

WARNMODE_OFF:=0, WARNMODE_OUTPUTDEBUG:=1, WARNMODE_MSGBOX:=2	;  WARNMODE_OFF must be zero.

ALLOW_MULTI_INSTANCE:=0, SINGLE_INSTANCE_PROMPT:=1, SINGLE_INSTANCE_REPLACE:=2
	, SINGLE_INSTANCE_IGNORE:=3, SINGLE_INSTANCE_OFF:=4 ;  ALLOW_MULTI_INSTANCE must be zero.
MENU_TYPE_NONE:=0, MENU_TYPE_POPUP:=1, MENU_TYPE_BAR:=2 ;  NONE must be zero.

;  These are used for things that can be turned on, off, or left at a
;  neutral default value that is neither on nor off.  INVALID must
;  be zero:
TOGGLE_INVALID:= 0, TOGGLED_ON:=1, TOGGLED_OFF:=2, ALWAYS_ON:=3, ALWAYS_OFF:=4, TOGGLE:=5
	, TOGGLE_PERMIT:=6, NEUTRAL:=7, TOGGLE_SEND:=8, TOGGLE_MOUSE:=9, TOGGLE_SENDANDMOUSE:=10, TOGGLE_DEFAULT:=11
	, TOGGLE_MOUSEMOVE:=12, TOGGLE_MOUSEMOVEOFF:=13

;  Some things (such as ListView sorting) rely on SCS_INSENSITIVE being zero.
;  In addition, BIF_InStr relies on SCS_SENSITIVE being 1:
StringCaseSenseType := {SCS_INSENSITIVE:0, SCS_SENSITIVE:1, SCS_INSENSITIVE_LOCALE:2, SCS_INSENSITIVE_LOGICAL:3, SCS_INVALID:4}

;  For use with ExpandExpression() and IsPureNumeric().
	;  The sPrecedence array in ExpandExpression() must be kept in sync with any additions, removals,
	;  or re-ordering of the below.  Also, IS_OPERAND() relies on all operand types being at the
	;  beginning of the list:
PURE_NOT_NUMERIC:=0 ;  Must be zero/false because callers rely on that.
	, PURE_INTEGER:=1, PURE_FLOAT:=2
	, SYM_STRING:=0, SYM_INTEGER:=1, SYM_FLOAT:=2 ;  Specific operand types.
	, SYM_VAR:=3 ;  An operand that is a variable's contents.
	, SYM_OPERAND:=4 ;  Generic/undetermined type of operand.
	, SYM_OBJECT:=5 ;  L31:= Represents an IObject interface pointer.
	, SYM_DYNAMIC:=6 ;  An operand that needs further processing during the evaluation phase.
	, SYM_OPERAND_END:=7 ;  Marks the symbol after the last operand.  This value is used below.
	, SYM_BEGIN:= 7 ;  SYM_BEGIN is a special marker to simplify the code.
	, SYM_POST_INCREMENT:=8, SYM_POST_DECREMENT:=9 ;  Kept in this position for use by YIELDS_AN_OPERAND() [helps performance].
	, SYM_DOT:=10 ;  DOT must precede SYM_OPAREN so YIELDS_AN_OPERAND(SYM_GET) == TRUE, allowing auto-concat to work for it even though it is positioned after its second operand.
	, SYM_CPAREN:=11, SYM_CBRACKET:=12, SYM_CBRACE:=13, SYM_OPAREN:=14, SYM_OBRACKET:=15, SYM_OBRACE:=16, SYM_COMMA:=17  ;  CPAREN (close-paren)/CBRACKET/CBRACE must come right before OPAREN for YIELDS_AN_OPERAND.
	, SYM_ASSIGN:=18, SYM_ASSIGN_ADD:=19, SYM_ASSIGN_SUBTRACT:=20, SYM_ASSIGN_MULTIPLY:=21, SYM_ASSIGN_DIVIDE:=22, SYM_ASSIGN_FLOORDIVIDE:=23
	, SYM_ASSIGN_BITOR:=24, SYM_ASSIGN_BITXOR:=25, SYM_ASSIGN_BITAND:=26, SYM_ASSIGN_BITSHIFTLEFT:=27, SYM_ASSIGN_BITSHIFTRIGHT:=28
	, SYM_ASSIGN_CONCAT:=29 ;  THIS MUST BE KEPT AS THE LAST (AND SYM_ASSIGN THE FIRST) BECAUSE THEY'RE USED IN A RANGE-CHECK.
	, SYM_IFF_ELSE:=30, SYM_IFF_THEN:=31 ;  THESE TERNARY OPERATORS MUST BE KEPT IN THIS ORDER AND ADJACENT TO THE BELOW.
	, SYM_OR:=32, SYM_AND:=33 ;  MUST BE KEPT IN THIS ORDER AND ADJACENT TO THE ABOVE because infix-to-postfix is optimized to check a range rather than a series of equalities.
	, SYM_LOWNOT:=34  ;  LOWNOT is the word "not", the low precedence counterpart of !
	, SYM_EQUAL:=35, SYM_EQUALCASE:=36, SYM_NOTEQUAL:=37 ;  =, ==, <> ... Keep this in sync with IS_RELATIONAL_OPERATOR() below.
	, SYM_GT:=38, SYM_LT:=39, SYM_GTOE:=40, SYM_LTOE:=41  ;  >, <, >=, <= ... Keep this in sync with IS_RELATIONAL_OPERATOR() below.
	, SYM_CONCAT:=42
	, SYM_BITOR:=43 ;  Seems more intuitive to have these higher in prec. than the above, unlike C and Perl, but like Python.
	, SYM_BITXOR:=44 ;  SYM_BITOR (ABOVE) MUST BE KEPT FIRST AMONG THE BIT OPERATORS BECAUSE IT'S USED IN A RANGE-CHECK.
	, SYM_BITAND:=45
	, SYM_BITSHIFTLEFT:=46, SYM_BITSHIFTRIGHT:=47 ;  << >>  ALSO:= SYM_BITSHIFTRIGHT MUST BE KEPT LAST AMONG THE BIT OPERATORS BECAUSE IT'S USED IN A RANGE-CHECK.
	, SYM_ADD:=48, SYM_SUBTRACT:=49
	, SYM_MULTIPLY:=50, SYM_DIVIDE:=51, SYM_FLOORDIVIDE:=52
	, SYM_NEGATIVE:=53, SYM_HIGHNOT:=54, SYM_BITNOT:=55, SYM_ADDRESS:=56, SYM_DEREF:=57 ;  Don't change position or order of these because Infix-to-postfix converter's special handling for SYM_POWER relies on them being adjacent to each other.
	, SYM_POWER:=58    ;  See comments near precedence array for why this takes precedence over SYM_NEGATIVE.
	, SYM_PRE_INCREMENT:=59, SYM_PRE_DECREMENT:=60 ;  Must be kept after the post-ops and in this order relative to each other due to a range check in the code.
	, SYM_FUNC:=61     ;  A call to a function.
	, SYM_NEW:=62      ;  new Class()
	, SYM_REGEXMATCH:=63 ;  L31:= Experimental ~= RegExMatch operator, equivalent to a RegExMatch call in two-parameter mode.
	, SYM_COUNT:=64    ;  Must be last because it's the total symbol count for everything above.
	, SYM_INVALID:=65  ;  Some callers may rely on YIELDS_AN_OPERAND(SYM_INVALID)==false.

IS_NUMERIC(symbol){
	global
	Return ((symbol) == SYM_INTEGER || (symbol) == SYM_FLOAT) ;  Ordered for short-circuit performance.
}
IS_OPERAND(symbol){
	global
	Return ((symbol) < SYM_OPERAND_END)
}
IS_OPAREN_LIKE(symbol){
	global
	Return ((symbol) <= SYM_OBRACE && (symbol) >= SYM_OPAREN)
}
IS_CPAREN_LIKE(symbol){
	global
	Return ((symbol) <= SYM_CBRACE && (symbol) >= SYM_CPAREN)
}
IS_OPAREN_MATCHING_CPAREN(sym_oparen, sym_cparen){
	global
	Return ((sym_oparen - sym_cparen) == (SYM_OPAREN - SYM_CPAREN)) ;  Requires that (IS_OPAREN_LIKE(sym_oparen) || IS_CPAREN_LIKE(sym_cparen)) is true.
}
SYM_CPAREN_FOR_OPAREN(symbol){
	global
	Return ((symbol) - (SYM_OPAREN - SYM_CPAREN)) ;  Caller must confirm it is OPAREN or OBRACKET.
}
SYM_OPAREN_FOR_CPAREN(symbol){
	global
	Return ((symbol) + (SYM_OPAREN - SYM_CPAREN)) ;  Caller must confirm it is CPAREN or CBRACKET.
}
YIELDS_AN_OPERAND(symbol){
	global
	Return ((symbol) < SYM_OPAREN) ;  CPAREN also covers the tail end of a function call.  Post-inc/dec yields an operand for things like Var++ + 2.  Definitely needs the parentheses around symbol.
}
IS_ASSIGNMENT_EXCEPT_POST_AND_PRE(symbol){
	global
	Return (symbol <= SYM_ASSIGN_CONCAT && symbol >= SYM_ASSIGN) ;  Check upper bound first for short-circuit performance.
}
IS_ASSIGNMENT_OR_POST_OP(symbol){
	global
	Return (IS_ASSIGNMENT_EXCEPT_POST_AND_PRE(symbol) || symbol == SYM_POST_INCREMENT || symbol == SYM_POST_DECREMENT)
}
IS_RELATIONAL_OPERATOR(symbol){
	global
	return (symbol >= SYM_EQUAL && symbol <= SYM_LTOE)
}

;  These two are macros for maintainability (i.e. seeing them together here helps maintain them together).
SYM_DYNAMIC_IS_DOUBLE_DEREF(token){
	Return (token.buf) ;  SYM_DYNAMICs other than doubles have NULL buf, at least at the stage this macro is called.
}
SYM_DYNAMIC_IS_VAR_NORMAL_OR_CLIP(token){
	global
	Return (!token.buf && ((token.var.Type() == VAR_NORMAL || token.var.Type() == VAR_CLIPBOARD))) ;  i.e. it's an evironment variable or the clipboard, not a built-in variable or double-deref.
}

;  Something in the compiler hates the name TokenType, so using a different name.
ExprTokenType := " 
(
	//  Due to the presence of 8-byte members (double and __int64) this entire struct is aligned on 8-byte
	//  vs. 4-byte boundaries.  The compiler defaults to this because otherwise an 8-byte member might
	//  sometimes not start at an even address, which would hurt performance on Pentiums, etc.
	union //  Which of its members is used depends on the value of symbol, below.
	{
		__int64 value_int64; //  for SYM_INTEGER
		double value_double; //  for SYM_FLOAT
		struct
		{
			union //  These nested structs and unions minimize the token size by overlapping data.
			{
				IObject *object;
				DerefType *deref; //  for SYM_FUNC
				Var *var;         //  for SYM_VAR
				LPTSTR marker;     //  for SYM_STRING and SYM_OPERAND.
			};
			union //  Due to the outermost union, this doesn't increase the total size of the struct on x86 builds (but it does on x64). It's used by SYM_FUNC (helps built-in functions), SYM_DYNAMIC, SYM_OPERAND, and perhaps other misc. purposes.
			{
				LPTSTR buf;
				size_t marker_length; //  Used only with aResultToken. TODO: Move into separate ResultTokenType struct.
			};
		};  
	};
	//  Note that marker's str-length should not be stored in this struct, even though it might be readily
	//  available in places and thus help performance.  This is because if it were stored and the marker
	//  or SYM_VAR's var pointed to a location that was changed as a side effect of an expression's
	//  call to a script function, the length would then be invalid.
	SymbolType symbol; //  Short-circuit benchmark is currently much faster with this and the next beneath the union, perhaps due to CPU optimizations for 8-byte alignment.
	union
	{
		ExprTokenType *circuit_token; //  Facilitates short-circuit boolean evaluation.
		LPTSTR mem_to_free; //  Used only with aResultToken. TODO: Move into separate ResultTokenType struct.
	};
	//  The above two probably need to be adjacent to each other to conserve memory due to 8-byte alignment,
	//  which is the default alignment (for performance reasons) in any struct that contains 8-byte members
	//  such as double and __int64.
)"

;L31: Abstract interface for "objects".
IObject := "
(
	//  See script_object.cpp for comments.
	ResultType Invoke;
	
	//  Simple reference-counting mechanism.  Usage should be similar to IUnknown (COM).
	//  Some scripts may rely on these being at the same offset as IUnknown::AddRef/Release.
	ULONG AddRef;
    ULONG Release;
)"

;  Flags used when calling Invoke; also used by g_ObjGet etc.:
define(IT_GET,0)
define(IT_SET,1)
define(IT_CALL,2) ;  L40: MetaObject::Invoke relies on these being mutually-exclusive bits.
define(IT_BITMASK,3) ;  bit-mask for the above.

define(IF_METAOBJ,0x10000) ;  Indicates 'this' is a meta-object/base of aThisToken. Restricts some functionality and causes aThisToken to be inserted into the param list of called functions.
define(IF_METAFUNC,0x20000) ;  Indicates Invoke should call a meta-function before checking the object's fields.
define(IF_META,IF_METAOBJ | IF_METAFUNC)	;  Flags for regular recursion into base object.
define(IF_FUNCOBJ,0x40000) ;  Indicates 'this' is a function, being called via another object (aParam[0]).

define(MAX_TOKENS,512) ;  Max number of operators/operands.  Seems enough to handle anything realistic, while conserving call-stack space.
;		define(STACK_PUSH(token_ptr) stack[stack_count++] = token_ptr
;		define(STACK_POP stack[--stack_count]  ;  To be used as the r-value for an assignment.

;  But the array that goes with these actions is in globaldata.cpp because
;  otherwise it would be a little cumbersome to declare the extern version
;  of the array in here (since it's only extern to modules other than
;  script.cpp):

;  Seems best to make ACT_INVALID zero so that it will be the ZeroMemory() default within
;  any POD structures that contain an action_type field:
ACT_INVALID:= FAIL  ;  These should both be zero for initialization and function-return-value purposes.
	, ACT_ASSIGN:=1, ACT_ASSIGNEXPR:=2, ACT_EXPRESSION:=3, ACT_ADD:=4, ACT_SUB:=5, ACT_MULT:=6, ACT_DIV:=7
	, ACT_ASSIGN_FIRST:= 1, ACT_ASSIGN_LAST:= 7
	, ACT_REPEAT:=8 ;  Never parsed directly, only provided as a translation target for the old command (see other notes).
	, ACT_ELSE:=9   ;  Parsed at a lower level than most commands to support same-line ELSE-actions (e.g. "else if").
	, ACT_IFIN:=10, ACT_IFNOTIN:=11, ACT_IFCONTAINS:=12, ACT_IFNOTCONTAINS:=14, ACT_IFIS:=15, ACT_IFISNOT:=16
	, ACT_IFBETWEEN:=17, ACT_IFNOTBETWEEN:=18
	, ACT_IFEXPR:=19  ;  i.e. if (expr)
	 ;  *** *** *** KEEP ALL OLD-STYLE/AUTOIT V2 IFs AFTER THIS (v1.0.20 bug fix). *** *** ***
	 , ACT_FIRST_IF_ALLOWING_SAME_LINE_ACTION:=20
	 ;  *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
	 ;  ACT_IS_IF_OLD() relies upon ACT_IFEQUAL through ACT_IFLESSOREQUAL being adjacent to one another
	 ;  and it relies upon the fact that ACT_IFEQUAL is first in the series and ACT_IFLESSOREQUAL last.
	, ACT_IFEQUAL:=20, ACT_IFNOTEQUAL:=21, ACT_IFGREATER:=22, ACT_IFGREATEROREQUAL:=23
	, ACT_IFLESS:=24, ACT_IFLESSOREQUAL:=25
	, ACT_FIRST_OPTIMIZED_IF:=17, ACT_LAST_OPTIMIZED_IF:=25
	, ACT_FIRST_COMMAND:= 26 ;  i.e the above aren't considered commands for parsing/searching purposes.
	, ACT_IFWINEXIST:= 26
	, ACT_IFWINNOTEXIST:= 27, ACT_IFWINACTIVE:= 28, ACT_IFWINNOTACTIVE:=29
	, ACT_IFINSTRING:= 30, ACT_IFNOTINSTRING:= 31
	, ACT_IFEXIST:= 32, ACT_IFNOTEXIST:= 33, ACT_IFMSGBOX:= 34
	, ACT_FIRST_IF:=10, ACT_LAST_IF:=34  ;  Keep this range updated with any new IFs that are added.
	, ACT_MSGBOX:= 35, ACT_INPUTBOX:= 36, ACT_SPLASHTEXTON:= 37, ACT_SPLASHTEXTOFF:= 38, ACT_PROGRESS:= 39, ACT_SPLASHIMAGE:= 40
	, ACT_TOOLTIP:= 41, ACT_TRAYTIP:= 42, ACT_INPUT:=43
	, ACT_TRANSFORM:= 44, ACT_STRINGLEFT:= 45, ACT_STRINGRIGHT:= 46, ACT_STRINGMID:= 47
	, ACT_STRINGTRIMLEFT:= 48, ACT_STRINGTRIMRIGHT:= 49, ACT_STRINGLOWER:=50, ACT_STRINGUPPER:=51
	, ACT_STRINGLEN:=52, ACT_STRINGGETPOS:=53, ACT_STRINGREPLACE:=54, ACT_STRINGSPLIT:=55, ACT_SPLITPATH:=56, ACT_SORT:=57
	, ACT_ENVGET:=58, ACT_ENVSET:=59, ACT_ENVUPDATE:=60
	, ACT_RUNAS:=61, ACT_RUN:=62, ACT_RUNWAIT:=63, ACT_URLDOWNLOADTOFILE:=64
	, ACT_GETKEYSTATE:=65
	, ACT_SEND:=66, ACT_SENDRAW:=67, ACT_SENDINPUT:=68, ACT_SENDPLAY:=69, ACT_SENDEVENT:=70
	, ACT_CONTROLSEND:=71, ACT_CONTROLSENDRAW:=72, ACT_CONTROLCLICK:=73, ACT_CONTROLMOVE:=74, ACT_CONTROLGETPOS:=75, ACT_CONTROLFOCUS:=76
	, ACT_CONTROLGETFOCUS:=77, ACT_CONTROLSETTEXT:=78, ACT_CONTROLGETTEXT:=79, ACT_CONTROL:=80, ACT_CONTROLGET:=81
	, ACT_SENDMODE:=82, ACT_COORDMODE:=83, ACT_SETDEFAULTMOUSESPEED:=84
	, ACT_CLICK:=85, ACT_MOUSEMOVE:=86, ACT_MOUSECLICK:=87, ACT_MOUSECLICKDRAG:=88, ACT_MOUSEGETPOS:=89
	, ACT_STATUSBARGETTEXT:=90
	, ACT_STATUSBARWAIT:=91
	, ACT_CLIPWAIT:=92, ACT_KEYWAIT:=93
	, ACT_SLEEP:=94, ACT_RANDOM:=95
	, ACT_GOTO:=96, ACT_GOSUB:=97, ACT_ONEXIT:=98, ACT_HOTKEY:=99, ACT_SETTIMER:=100, ACT_CRITICAL:=101, ACT_THREAD:=102, ACT_RETURN:=103, ACT_EXIT:=104
	ACT_LOOP:=105, ACT_FOR:=196, ACT_WHILE:=107, ACT_UNTIL:=108, ACT_BREAK:=109, ACT_CONTINUE:=110 ;  Keep LOOP, FOR, WHILE and UNTIL together and in this order for range checks in various places.
	, ACT_BLOCK_BEGIN:=111, ACT_BLOCK_END:=112
	, ACT_WINACTIVATE:=113, ACT_WINACTIVATEBOTTOM:=114
	, ACT_WINWAIT:=115, ACT_WINWAITCLOSE:=116, ACT_WINWAITACTIVE:=117, ACT_WINWAITNOTACTIVE:=118
	, ACT_WINMINIMIZE:=119, ACT_WINMAXIMIZE:=120, ACT_WINRESTORE:=121
	, ACT_WINHIDE:=122, ACT_WINSHOW:=123
	, ACT_WINMINIMIZEALL:=124, ACT_WINMINIMIZEALLUNDO:=125
	, ACT_WINCLOSE:=126, ACT_WINKILL:=127, ACT_WINMOVE:=128, ACT_WINMENUSELECTITEM:=129, ACT_PROCESS:=130
	, ACT_WINSET:=131, ACT_WINSETTITLE:=132, ACT_WINGETTITLE:=133, ACT_WINGETCLASS:=134, ACT_WINGET:=135, ACT_WINGETPOS:=136, ACT_WINGETTEXT:=137
	, ACT_SYSGET:=138, ACT_POSTMESSAGE:=139, ACT_SENDMESSAGE:=140
	;  Keep rarely used actions near the bottom for parsing/performance reasons:=
	, ACT_PIXELGETCOLOR:=141, ACT_PIXELSEARCH:=142, ACT_IMAGESEARCH:=143
	, ACT_GROUPADD:=144, ACT_GROUPACTIVATE:=145, ACT_GROUPDEACTIVATE:=146, ACT_GROUPCLOSE:=147
	, ACT_DRIVESPACEFREE:=148, ACT_DRIVE:=149, ACT_DRIVEGET:=150
	, ACT_SOUNDGET:=151, ACT_SOUNDSET:=152, ACT_SOUNDGETWAVEVOLUME:=153, ACT_SOUNDSETWAVEVOLUME:=154, ACT_SOUNDBEEP:=155, ACT_SOUNDPLAY:=156
	, ACT_FILEAPPEND:=157, ACT_FILEREAD:=158, ACT_FILEREADLINE:=159, ACT_FILEDELETE:=160, ACT_FILERECYCLE:=161, ACT_FILERECYCLEEMPTY:=162
	, ACT_FILEINSTALL:=163, ACT_FILECOPY:=164, ACT_FILEMOVE:=165, ACT_FILECOPYDIR:=166, ACT_FILEMOVEDIR:=167
	, ACT_FILECREATEDIR:=168, ACT_FILEREMOVEDIR:=169
	, ACT_FILEGETATTRIB:=170, ACT_FILESETATTRIB:=171, ACT_FILEGETTIME:=172, ACT_FILESETTIME:=173
	, ACT_FILEGETSIZE:=174, ACT_FILEGETVERSION:=175
	, ACT_SETWORKINGDIR:=176, ACT_FILESELECTFILE:=177, ACT_FILESELECTFOLDER:=178, ACT_FILEGETSHORTCUT:=179, ACT_FILECREATESHORTCUT:=180
	, ACT_INIREAD:=180, ACT_INIWRITE:=182, ACT_INIDELETE:=183
	, ACT_REGREAD:=184, ACT_REGWRITE:=185, ACT_REGDELETE:=186, ACT_OUTPUTDEBUG:=187
	, ACT_SETKEYDELAY:=188, ACT_SETMOUSEDELAY:=189, ACT_SETWINDELAY:=190, ACT_SETCONTROLDELAY:=191, ACT_SETBATCHLINES:=192
	, ACT_SETTITLEMATCHMODE:=193, ACT_SETFORMAT:=194, ACT_FORMATTIME:=195
	, ACT_SUSPEND:=196, ACT_PAUSE:=197
	, ACT_AUTOTRIM:=198, ACT_STRINGCASESENSE:=199, ACT_DETECTHIDDENWINDOWS:=200, ACT_DETECTHIDDENTEXT:=201, ACT_BLOCKINPUT:=202
	, ACT_SETNUMLOCKSTATE:=203, ACT_SETSCROLLLOCKSTATE:=204, ACT_SETCAPSLOCKSTATE:=205, ACT_SETSTORECAPSLOCKMODE:=206
	, ACT_KEYHISTORY:=207, ACT_LISTLINES:=208, ACT_LISTVARS:=209, ACT_LISTHOTKEYS:=210
	, ACT_EDIT:=211, ACT_RELOAD:=212, ACT_MENU:=213, ACT_GUI:=214, ACT_GUICONTROL:=215, ACT_GUICONTROLGET:=216
	, ACT_EXITAPP:=217
	, ACT_SHUTDOWN:=218
	, ACT_FILEENCODING:=219
;  Make these the last ones before the count so they will be less often processed.  This helps
;  performance because this one doesn't actually have a keyword so will never result
;  in a match anyway.  UPDATE: No longer used because Run/RunWait is now required, which greatly
;  improves syntax checking during load:
; , ACT_EXEC
;  It's safer not to do this here.  It's better set by a
;  calculation immediately after the array is declared and initialized,
;  at which time we know its true size:
;  , ACT_COUNT


OLD_INVALID:= FAIL  ;  These should both be zero for initialization and function-return-value purposes.
  , OLD_SETENV:=1, OLD_ENVADD:=2, OLD_ENVSUB:=3, OLD_ENVMULT:=4, OLD_ENVDIV:=5
  ;  ACT_IS_IF_OLD() relies on the items in this next line being adjacent to one another and in this order:=
  , OLD_IFEQUAL:=6, OLD_IFNOTEQUAL:=7, OLD_IFGREATER:=8, OLD_IFGREATEROREQUAL:=9, OLD_IFLESS:=10, OLD_IFLESSOREQUAL:=11
  , OLD_LEFTCLICK:=12, OLD_RIGHTCLICK:=13, OLD_LEFTCLICKDRAG:=14, OLD_RIGHTCLICKDRAG:=15
  , OLD_HIDEAUTOITWIN:=16, OLD_REPEAT:=17, OLD_ENDREPEAT:=18
  , OLD_WINGETACTIVETITLE:=19, OLD_WINGETACTIVESTATS:=20


;  It seems best not to include ACT_SUSPEND in the below, since the user may have marked
;  a large number of subroutines as "Suspend, Permit".  Even PAUSE is iffy, since the user
;  may be using it as "Pause, off/toggle", but it seems best to support PAUSE because otherwise
;  hotkey such as "#z::pause" would not be able to unpause the script if its MaxThreadsPerHotkey
;  was 1 (the default).
ACT_IS_ALWAYS_ALLOWED(ActionType){
	global
	Return (ActionType == ACT_EXITAPP || ActionType == ACT_PAUSE
	|| ActionType == ACT_EDIT || ActionType == ACT_RELOAD || ActionType == ACT_KEYHISTORY
	|| ActionType == ACT_LISTLINES || ActionType == ACT_LISTVARS || ActionType == ACT_LISTHOTKEYS)
}

ACT_IS_ASSIGN(ActionType){
	global
	Return (ActionType <= ACT_ASSIGN_LAST && ActionType >= ACT_ASSIGN_FIRST) ;  Ordered for short-circuit performance.
}
ACT_IS_IF(ActionType){
	global
	Return (ActionType >= ACT_FIRST_IF && ActionType <= ACT_LAST_IF)
}
ACT_IS_IF_OR_ELSE_OR_LOOP(ActionType){
	global
	Return (ACT_IS_IF(ActionType) || ActionType == ACT_ELSE 
	|| ActionType == ACT_LOOP || ActionType == ACT_WHILE || ActionType == ACT_FOR)
}
ACT_IS_IF_OLD(ActionType, OldActionType){
	global
	Return (ActionType >= ACT_FIRST_IF_ALLOWING_SAME_LINE_ACTION && ActionType <= ACT_LAST_IF)
	&& (ActionType < ACT_IFEQUAL || ActionType > ACT_IFLESSOREQUAL || (OldActionType >= OLD_IFEQUAL && OldActionType <= OLD_IFLESSOREQUAL))
}
	;  All the checks above must be done so that cmds such as IfMsgBox (which are both "old" and "new")
	;  can support parameters on the same line or on the next line.  For example, both of the above are allowed:
	;  IfMsgBox, No, Gosub, XXX
	;  IfMsgBox, No
	;      Gosub, XXX

;  For convenience in many places.  Must cast to int to avoid loss of negative values.
;		define(BUF_SPACE_REMAINING ((int)(aBufSize - (aBuf - aBuf_orig)))

;  MsgBox timeout value.  This can't be zero because that is used as a failure indicator:
;  Also, this define is in this file to prevent problems with mutual
;  dependency between script.h and window.h.  Update: It can't be -1 either because
;  that value is used to indicate failure by DialogBox():
define(AHK_TIMEOUT,-2)
;  And these to prevent mutual dependency problem between window.h and globaldata.h:
define(MAX_MSGBOXES,7) ;  Probably best not to change this because it's used by OurTimers to set the timer IDs, which should probably be kept the same for backward compatibility.
define(MAX_INPUTBOXES,4)
define(MAX_PROGRESS_WINDOWS,10)  ;  Allow a lot for downloads and such.
define(MAX_PROGRESS_WINDOWS_STR,"10") ;  Keep this in sync with above.
define(MAX_SPLASHIMAGE_WINDOWS,10)
define(MAX_SPLASHIMAGE_WINDOWS_STR,"10") ;  Keep this in sync with above.
define(MAX_GUI_WINDOWS,99)  ;  Things that parse the "NN:" prefix for Gui/GuiControl might rely on this being 2-digit.
define(MAX_GUI_WINDOWS_STR,"99") ;  Keep this in sync with above.

define(MAX_MSG_MONITORS,500)

;  IMPORTANT: Before ever changing the below, note that it will impact the IDs of menu items created
;  with the MENU command, as well as the number of such menu items that are possible (currently about
;  65500-11000=54500). See comments at ID_USER_FIRST for details:
define(GUI_CONTROL_BLOCK_SIZE,1000)
define(MAX_CONTROLS_PER_GUI,GUI_CONTROL_BLOCK_SIZE * 11) ;  Some things rely on this being less than 0xFFFF and an even multiple of GUI_CONTROL_BLOCK_SIZE.
define(NO_CONTROL_INDEX,MAX_CONTROLS_PER_GUI) ;  Must be 0xFFFF or less.

define(NO_EVENT_INFO,0) ;  For backward compatibility with documented contents of A_EventInfo, this should be kept as 0 vs. something more special like UINT_MAX.

define(MAX_TOOLTIPS,20)
define(MAX_TOOLTIPS_STR,"20")   ;  Keep this in sync with above.
define(MAX_FILEDIALOGS,4)
define(MAX_FOLDERDIALOGS,4)

define(MAX_NUMBER_LENGTH,255)                   ;  Large enough to allow custom zero or space-padding via %10.2f, etc.
define(MAX_NUMBER_SIZE,MAX_NUMBER_LENGTH + 1) ;  But not too large because some things might rely on this being fairly small.
define(MAX_INTEGER_LENGTH,20)                     ;  Max length of a 64-bit number when expressed as decimal or
define(MAX_INTEGER_SIZE,MAX_INTEGER_LENGTH + 1) ;  hex string; e.g. -9223372036854775808 or (unsigned) 18446744073709551616 or (hex) -0xFFFFFFFFFFFFFFFF.

;  Hot-strings:
;  memmove() and proper detection of long hotstrings rely on buf being at least this large:
define(HS_BUF_SIZE,MAX_HOTSTRING_LENGTH * 2 + 10)
define(HS_BUF_DELETE_COUNT,HS_BUF_SIZE / 2)
define(HS_MAX_END_CHARS,100)

;  Bitwise storage of boolean flags.  This section is kept in this file because
;  of mutual dependency problems between hook.h and other header files:
define(HookType,"UCHAR")
define(HOOK_KEYBD,0x01)
define(HOOK_MOUSE,0x02)
define(HOOK_FAIL,0xFF)

;  These macros used to keep app responsive during a long operation.  In v1.0.39, the
;  hooks have a dedicated thread.  However, mLastPeekTime is still compared to 5 rather
;  than some higher value for the following reasons:
;  1) Want hotkeys pressed during a long operation to take effect as quickly as possible.
;     For example, in games a hotkey's response time is critical.
;  2) Benchmarking shows less than a 0.5% performance improvement from this comparing
;     to a higher value (even one as high as 500), even when the system is under heavy
;     load from other processes).
; 
;  mLastPeekTime is global/static so that recursive functions, such as FileSetAttrib(),
;  will sleep as often as intended even if the target files require frequent recursion.
;  The use of a global/static is not friendly to recursive calls to the function (i.e. calls
;  maded as a consequence of the current script subroutine being interrupted by another during
;  this instance's MsgSleep()).  However, it doesn't seem to be that much of a consequence
;  since the exact interval/period of the MsgSleep()'s isn't that important.  It's also
;  pretty unlikely that the interrupting subroutine will also just happen to call the same
;  function rather than some other.
; 
;  Older comment that applies if there is ever again no dedicated thread for the hooks:
;  These macros were greatly simplified when it was discovered that PeekMessage(), when called
;  directly as below, is enough to prevent keyboard and mouse lag when the hooks are installed
define(msg,"LONG_OPERATION_INIT") 
define(tick_now,"DWORD")

;  Defining these here avoids awkwardness due to the fact that globaldata.cpp
;  does not (for design reasons) include globaldata.h:
define(ActionTypeType,UCHAR) ;  If ever have more than 256 actions, will have to change this (but it would increase code size due to static data in g_act).
define(MAX_NUMERIC_PARAMS,7)
Action := "
(
	LPTSTR Name;
	//  Just make them int's, rather than something smaller, because the collection
	//  of actions will take up very little memory.  Int's are probably faster
	//  for the processor to access since they are the native word size, or something:
	//  Update for v1.0.40.02: Now that the ARGn macros don't check mArgc, MaxParamsAu2WithHighBit
	//  is needed to allow MaxParams to stay pure, which in turn prevents Line::Perform()
	//  from accessing a NULL arg in the sArgDeref array (i.e. an arg that exists only for
	//  non-AutoIt2 scripts, such as the extra ones in StringGetPos).
	//  Also, changing these from ints to chars greatly reduces code size since this struct
	//  is used by g_act to build static data into the code.  Testing shows that the compiler
	//  will generate a warning even when not in debug mode in the unlikely event that a constant
	//  larger than 127 is ever stored in one of these:
	char MinParams, MaxParams, MaxParamsAu2WithHighBit;
	//  Array indicating which args must be purely numeric.  The first arg is
	//  number 1, the second 2, etc (i.e. it doesn't start at zero).  The list
	//  is ended with a zero, much like a string.  The compiler will notify us
	//  (verified) if MAX_NUMERIC_PARAMS ever needs to be increased:
	ActionTypeType NumericParams[" MAX_NUMERIC_PARAMS "];
)"


;  Values are hard-coded for some of the below because they must not deviate from the documented, numerical
;  TitleMatchModes:
TitleMatchModes := {MATCHMODE_INVALID: FAIL, FIND_IN_LEADING_PART: 1, FIND_ANYWHERE: 2, FIND_EXACT: 3, FIND_REGEX:4, FIND_FAST:5, FIND_SLOW:6}

define(GuiIndexType,"UINT") ;  Some things rely on it being unsigned to avoid the need to check for less-than-zero.
define(GuiEventType,"UINT") ;  Made a UINT vs. enum so that illegal/underflow/overflow values are easier to detect.

;  The following array and enum must be kept in sync with each other:
define(GUI_EVENT_NAMES,["","Normal","DoubleClick","RightClick","ColClick"])
GUI_EVENT_NONE:=0  ;  NONE must be zero for any uses of ZeroMemory(), synonymous with false, etc.
	, GUI_EVENT_NORMAL:=1, GUI_EVENT_DBLCLK:=2 ;  Try to avoid changing this and the other common ones in case anyone automates a script via SendMessage (though that does seem very unlikely).
	, GUI_EVENT_RCLK:=3, GUI_EVENT_COLCLK:=4
	, GUI_EVENT_FIRST_UNNAMED:=5  ;  This item must always be 1 greater than the last item that has a name in the GUI_EVENT_NAMES array below.
	, GUI_EVENT_DROPFILES:= 5
	, GUI_EVENT_CLOSE:= 6, GUI_EVENT_ESCAPE:= 7, GUI_EVENT_RESIZE:= 8, GUI_EVENT_CONTEXTMENU:= 9
	, GUI_EVENT_DIGIT_0:=48 ;  Here just as a reminder that this value and higher are reserved so that a single printable character or digit (mnemonic) can be sent, and also so that ListView's "I" notification can add extra data into the high-byte (which lies just to the left of the "I" character in the bitfield).

;  Bitwise flags:
define(CoordModeAttribType,"UCHAR")
define(COORD_MODE_PIXEL,0x01)
define(COORD_MODE_MOUSE,0x02)
define(COORD_MODE_TOOLTIP,0x04)
define(COORD_MODE_CARET,0x08)
define(COORD_MODE_MENU,0x10)
define(COORD_CENTERED,INT_MIN + 1)
define(COORD_UNSPECIFIED,INT_MIN)
define(COORD_UNSPECIFIED_SHORT,SHRT_MIN)  ;  This essentially makes coord -32768 "reserved", but it seems acceptable given usefulness and the rarity of a real coord like that.

define(EventInfoType,"UINT_PTR")

;  Same reason as above struct.  It's best to keep this struct as small as possible
;  because it's used as a local (stack) var by at least one recursive function:
;  Each instance of this struct generally corresponds to a quasi-thread.  The function that creates
;  a new thread typically saves the old thread's struct values on its stack so that they can later
;  be copied back into the g struct when the thread is resumed:

FuncAndToken := new Struct("
(
	ExprTokenType mToken ;
	LPTSTR result_to_return_dll;
	Func * mFunc ;
	VARIANT variant_to_return_dll;
)")
 
global_struct := "
(
	//  8-byte items are listed first, which might improve alignment for 64-bit processors (dubious).
	__int64 LinesPerCycle; //  Use 64-bits for this so that user can specify really large values.
	__int64 mLoopIteration; //  Signed, since script/ITOA64 aren't designed to handle unsigned.
	WIN32_FIND_DATA *mLoopFile;  //  The file of the current file-loop, if applicable.
	RegItemStruct *mLoopRegItem; //  The registry subkey or value of the current registry enumeration loop.
	LoopReadFileStruct *mLoopReadFile;  //  The file whose contents are currently being read by a File-Read Loop.
	LPTSTR mLoopField;  //  The field of the current string-parsing loop.
	//  v1.0.44.14: The above mLoop attributes were moved into this structure from the script class
	//  because they're more approriate as thread-attributes rather than being global to the entire script.

	TitleMatchModes TitleMatchMode;
	int IntervalBeforeRest;
	int UninterruptedLineCount; //  Stored as a g-struct attribute in case OnExit sub interrupts it while uninterruptible.
	int Priority;  //  This thread's priority relative to others.
	DWORD LastError; //  The result of GetLastError() after the most recent DllCall or Run.
	GuiEventType GuiEvent; //  This thread's triggering event, e.g. DblClk vs. normal click.
	EventInfoType EventInfo; //  Not named 'GuiEventInfo' because it applies to non-GUI events such as clipboard.
	POINT GuiPoint; //  The position of GuiEvent. Stored as a thread vs. window attribute so that underlying threads see their original values when resumed.
	GuiIndexType GuiWindowIndex, GuiControlIndex; //  The GUI window index and control index that launched this thread.
	GuiIndexType GuiDefaultWindowIndex; //  This thread's default GUI window, used except when specified 'Gui, 2:Add, ...'
	GuiIndexType DialogOwnerIndex; //  This thread's GUI owner, if any. Stored as Index vs. HWND to insulate against the case where a GUI window has been destroyed and recreated with a new HWND.
	int WinDelay;  //  negative values may be used as special flags.
	int ControlDelay; //  negative values may be used as special flags.
	int KeyDelay;     // 
	int KeyDelayPlay; // 
	int PressDuration;     //  The delay between the up-event and down-event of each keystroke.
	int PressDurationPlay; //  
	int MouseDelay;     //  negative values may be used as special flags.
	int MouseDelayPlay; // 
	TCHAR FormatFloat[32];
	Func *CurrentFunc; //  v1.0.46.16: The function whose body is currently being processed at load-time, or being run at runtime (if any).
	Func *CurrentFuncGosub; //  v1.0.48.02: Allows A_ThisFunc to work even when a function Gosubs an external subroutine.
	Label *CurrentLabel; //  The label that is currently awaiting its matching 'return' (if any).
	HWND hWndLastUsed;  //  In many cases, it's better to use GetValidLastUsedWindow() when referring to this.
	; HWND hWndToRestore;
	int MsgBoxResult;  //  Which button was pressed in the most recent MsgBox.
	HWND DialogHWND;

	//  All these one-byte members are kept adjacent to make the struct smaller, which helps conserve stack space:
	SendModes SendMode;
	DWORD PeekFrequency; //  DWORD vs. UCHAR might improve performance a little since it's checked so often.
	DWORD ThreadStartTime;
	int UninterruptibleDuration; //  Must be int to preserve negative values found in g_script.mUninterruptibleTime.
	DWORD CalledByIsDialogMessageOrDispatchMsg; //  Detects that fact that some messages (like WM_KEYDOWN->WM_NOTIFY for UpDown controls) are translated to different message numbers by IsDialogMessage (and maybe Dispatch too).
	bool CalledByIsDialogMessageOrDispatch; //  Helps avoid launching a monitor function twice for the same message.  This would probably be okay if it were a normal global rather than in the g-struct, but due to messaging complexity, this lends peace of mind and robustness.
	bool TitleFindFast; //  Whether to use the fast mode of searching window text, or the more thorough slow mode.
	bool DetectHiddenWindows; //  Whether to detect the titles of hidden parent windows.
	bool DetectHiddenText;    //  Whether to detect the text of hidden child windows.
	bool AllowThreadToBeInterrupted;  //  Whether this thread can be interrupted by custom menu items, hotkeys, or timers.
	bool AllowTimers; //  v1.0.40.01 Whether new timer threads are allowed to start during this thread.
	bool ThreadIsCritical; //  Whether this thread has been marked (un)interruptible by the 'Critical' command.
	UCHAR DefaultMouseSpeed;
	UCHAR CoordMode; //  Bitwise collection of flags.
	UCHAR StringCaseSense; //  On/Off/Locale
	bool StoreCapslockMode;
	bool AutoTrim;
	char FormatInt;
	bool MsgBoxTimedOut; //  Doesn't require initialization.
	bool IsPaused; //  The latter supports better toggling via 'Pause' or 'Pause Toggle'.
	bool ListLinesIsEnabled;
	UINT Encoding;
)"

define(DEFAULT_PEEK_FREQUENCY,5)
define(DEFAULT_MOUSE_SPEED,2)
define(MAX_MOUSE_SPEED,100)
define(MAX_MOUSE_SPEED_STR,"100")
define(ERRORLEVEL_SAVED_SIZE,128) ;  The size that can be remembered (saved & restored) if a thread is interrupted. Big in case user put something bigger than a number in g_ErrorLevel.

define(WINAPI_SUFFIX,A_IsUnicode?"W":"A")
define(PROCESS_API_SUFFIX,A_IsUnicode?"W":"") ;  used by Process32First and Process32Next

define(CP_AHKNOBOM,0x80000000)
define(CP_AHKCP,~CP_AHKNOBOM)

;         SCRIPT.H

define(MAX_THREADS_LIMIT,UCHAR_MAX) ;  Uses UCHAR_MAX (255) because some variables that store a thread count are UCHARs.
define(MAX_THREADS_DEFAULT,10) ;  Must not be higher than above.
define(EMERGENCY_THREADS,2) ;  This is the number of extra threads available after g_MaxThreadsTotal has been reached for the following to launch: hotkeys/etc. whose first line is something important like ExitApp or Pause. (see #MaxThreads documentation).
define(MAX_THREADS_EMERGENCY,g_MaxThreadsTotal + EMERGENCY_THREADS)
define(TOTAL_ADDITIONAL_THREADS,EMERGENCY_THREADS + 2) ;  See below.
;  Must allow two beyond EMERGENCY_THREADS: One for the AutoExec/idle thread and one so that ExitApp()
;  can run even when MAX_THREADS_EMERGENCY has been reached.
;  Explanation: If/when AutoExec() finishes, although it no longer needs g_array[0] (not even
;  AutoExecSectionTimeout() needs it because it either won't be called or it will return early),
;  at least the following might still use g_array[0]:
;  1) Threadless (fast-mode) callbacks that have no controlling script thread; see RegisterCallbackCStub().
;  2) g_array[0].IsPaused indicates whether the script is in a paused state while idle.
;  In addition, it probably simplifies the code not to reclaim g_array[0]; e.g. ++g and --g can be done
;  unconditionally when creating new threads.

NORMAL_MODE:=0, UNTIL_RETURN:=1, UNTIL_BLOCK_END:=2, ONLY_ONE_LINE:=3

;  It's done this way so that mAttribute can store a pointer or one of these constants.
;  If it is storing a pointer for a given Action Type, be sure never to compare it
;  for equality against these constants because by coincidence, the pointer value
;  might just match one of them:
define(ATTR_NONE,0)  ;  Some places migh rely on this being zero.
define(ATTR_TRUE,1)
define(ATTR_LOOP_UNKNOWN,1) ;  Same value as the above.        ;  KEEP IN SYNC WITH BELOW.
ATTR_LOOP_IS_UNKNOWN_OR_NONE(attr){
	global
	Return (attr <= ATTR_LOOP_UNKNOWN) ;  KEEP IN SYNC WITH ABOVE.
}
define(ATTR_LOOP_NORMAL,2)
define(ATTR_LOOP_FILEPATTERN,3)
define(ATTR_LOOP_REG,4)
define(ATTR_LOOP_READ_FILE,5)
define(ATTR_LOOP_PARSE,6)
define(ATTR_LOOP_WHILE,7) ;  Lexikos: This is used to differentiate ACT_WHILE from ACT_LOOP, allowing code to be shared.
define(ATTR_LOOP_FOR,8)
;~ typedef void *AttributeType;

FILE_LOOP_INVALID:=0, FILE_LOOP_FILES_ONLY:=1, FILE_LOOP_FILES_AND_FOLDERS:=2, FILE_LOOP_FOLDERS_ONLY:=3
VAR_TYPE_INVALID:=0, VAR_TYPE_NUMBER:=1, VAR_TYPE_INTEGER:=2, VAR_TYPE_FLOAT:=3
	, VAR_TYPE_TIME:=4	, VAR_TYPE_DIGIT:=5, VAR_TYPE_XDIGIT:=6, VAR_TYPE_ALNUM:=7, VAR_TYPE_ALPHA:=8
	, VAR_TYPE_UPPER:=9, VAR_TYPE_LOWER:=10, VAR_TYPE_SPACE:=11

;  Since WM_COMMAND IDs must be shared among all menus and controls, they are carefully conserved,
;  especially since there are only 65,535 possible IDs.  In addition, they are assigned to ranges
;  to minimize the need that they will need to be changed in the future (changing the ID of a main
;  menu item, tray menu item, or a user-defined menu item [by way of increasing MAX_CONTROLS_PER_GUI]
;  is bad because some scripts might be using PostMessage/SendMessage to automate AutoHotkey itself).
;  For this reason, the following ranges are reserved:
;  0: unused (possibly special in some contexts)
;  1: IDOK
;  2: IDCANCEL
;  3 to 1002: GUI window control IDs (these IDs must be unique only within their parent, not across all GUI windows)
;  1003 to 65299: User Defined Menu IDs
;  65300 to 65399: Standard tray menu items.
;  65400 to 65534: main menu items (might be best to leave 65535 unused in case it ever has special meaning)
CONTROL_ID_FIRST := IDCANCEL + 1
	, ID_USER_FIRST := MAX_CONTROLS_PER_GUI + 3 ;  The first ID available for user defined menu items. Do not change this (see above for why).
	, ID_USER_LAST := 65299  ;  The last. Especially do not change this due to scripts using Post/SendMessage to automate AutoHotkey.
	, ID_TRAY_FIRST:=0, ID_TRAY_OPEN := ID_TRAY_FIRST
	, ID_TRAY_HELP:=1, ID_TRAY_WINDOWSPY:=2, ID_TRAY_RELOADSCRIPT:=3
	, ID_TRAY_EDITSCRIPT:=4, ID_TRAY_SUSPEND:=5, ID_TRAY_PAUSE:=6, ID_TRAY_EXIT:=7
	, ID_TRAY_LAST := ID_TRAY_EXIT ;  But this value should never hit the below. There is debug code to enforce.
	, ID_MAIN_FIRST := 65400, ID_MAIN_LAST := 65534 ;  These should match the range used by resource.h


define(ERR_ABORT_NO_SPACES,"The current thread will exit.")
define(ERR_ABORT,"  " ERR_ABORT_NO_SPACES)
define(WILL_EXIT,"The program will exit.")
define(OLD_STILL_IN_EFFECT,"The script was not reloaded; the old version will remain in effect.")
define(ERR_CONTINUATION_SECTION_TOO_LONG,"Continuation section too long.")
define(ERR_UNRECOGNIZED_ACTION,"This line does not contain a recognized action.")
define(ERR_NONEXISTENT_HOTKEY,"Nonexistent hotkey.")
define(ERR_NONEXISTENT_VARIANT,"Nonexistent hotkey variant (IfWin).")
define(ERR_NONEXISTENT_FUNCTION,"Call to nonexistent function.")
define(ERR_EXE_CORRUPTED,"EXE corrupted")
define(ERR_PARAM1_INVALID,"Parameter #1 invalid")
define(ERR_PARAM2_INVALID,"Parameter #2 invalid")
define(ERR_PARAM3_INVALID,"Parameter #3 invalid")
define(ERR_PARAM4_INVALID,"Parameter #4 invalid")
define(ERR_PARAM5_INVALID,"Parameter #5 invalid")
define(ERR_PARAM6_INVALID,"Parameter #6 invalid")
define(ERR_PARAM7_INVALID,"Parameter #7 invalid")
define(ERR_PARAM8_INVALID,"Parameter #8 invalid")
define(ERR_PARAM1_REQUIRED,"Parameter #1 required")
define(ERR_PARAM2_REQUIRED,"Parameter #2 required")
define(ERR_PARAM3_REQUIRED,"Parameter #3 required")
define(ERR_PARAM4_OMIT,"Parameter #4 should be omitted in this case.")
define(ERR_PARAM2_MUST_BE_BLANK,"Parameter #2 must be blank in this case.")
define(ERR_PARAM3_MUST_BE_BLANK,"Parameter #3 must be blank in this case.")
define(ERR_PARAM4_MUST_BE_BLANK,"Parameter #4 must be blank in this case.")
define(ERR_INVALID_KEY_OR_BUTTON,"Invalid key or button name")
define(ERR_MISSING_OUTPUT_VAR,"Requires at least one of its output variables.")
define(ERR_MISSING_OPEN_PAREN,"Missing ""(""")
define(ERR_MISSING_OPEN_BRACE,"Missing ""{""")
define(ERR_MISSING_OPEN_BRACKET,"Missing ""[""") ;  L31
define(ERR_MISSING_CLOSE_PAREN,"Missing "")""")
define(ERR_MISSING_CLOSE_BRACE,"Missing ""}""")
define(ERR_MISSING_CLOSE_BRACKET,"Missing ""]""") ;  L31
define(ERR_MISMATCHED_BRACKET_PAREN,"Mismatched [] or ()") ;  L31
define(ERR_MISSING_CLOSE_QUOTE,"Missing close-quote") ;  No period after short phrases.
define(ERR_MISSING_COMMA,"Missing comma")             ; 
define(ERR_BLANK_PARAM,"Blank parameter")             ; 
define(ERR_TOO_MANY_PARAMS,"Too many parameters passed to function.") ;  L31
define(ERR_TOO_FEW_PARAMS,"Too few parameters passed to function.") ;  L31
define(ERR_ELSE_WITH_NO_IF,"ELSE with no matching IF")
define(ERR_UNTIL_WITH_NO_LOOP,"UNTIL with no matching LOOP")
define(ERR_OUTOFMEM,"Out of memory.")  ;  Used by RegEx too, so don't change it without also changing RegEx to keep the former string.
define(ERR_EXPR_TOO_LONG,"Expression too long")
define(ERR_MEM_LIMIT_REACHED,"Memory limit reached (see #MaxMem in the help file).") ERR_ABORT
define(ERR_NO_LABEL,"Target label does not exist.")
define(ERR_MENU,"Menu does not exist.")
define(ERR_SUBMENU,"Submenu does not exist.")
define(ERR_WINDOW_PARAM,"Requires at least one of its window parameters.")
define(ERR_ON_OFF,"Requires ON/OFF/blank")
define(ERR_ON_OFF_LOCALE,"Requires ON/OFF/LOCALE")
define(ERR_ON_OFF_TOGGLE,"Requires ON/OFF/TOGGLE/blank")
define(ERR_ON_OFF_TOGGLE_PERMIT,"Requires ON/OFF/TOGGLE/PERMIT/blank")
define(ERR_TITLEMATCHMODE,"Requires 1/2/3/Slow/Fast")
define(ERR_MENUTRAY,"Supported only for the tray menu")
define(ERR_REG_KEY,"Invalid registry root key")
define(ERR_REG_VALUE_TYPE,"Invalid registry value type")
define(ERR_INVALID_DATETIME,"Invalid YYYYMMDDHHMISS value")
define(ERR_MOUSE_BUTTON,"Invalid mouse button")
define(ERR_MOUSE_COORD,"X & Y must be either both absent or both present.")
define(ERR_DIVIDEBYZERO,"Divide by zero")
define(ERR_PERCENT,"Must be between -100 and 100.")
define(ERR_MOUSE_SPEED,"Mouse speed must be between 0 and " MAX_MOUSE_SPEED_STR)
define(ERR_VAR_IS_READONLY,"Not allowed as an output variable.")
define(ERR_INVALID_DOT,"Unsupported use of "".""")
define(ERR_UNQUOTED_NON_ALNUM,"Unquoted literals may only consist of alphanumeric characters/underscore.")
define(ERR_DUPLICATE_DECLARATION,"Duplicate declaration.")
define(ERR_INVALID_CLASS_VAR,"Invalid class variable declaration.")

define(WARNING_USE_UNSET_VARIABLE,"Using value of uninitialized variable.")
define(WARNING_LOCAL_SAME_AS_GLOBAL,"Local variable with same name as global.")
define(WARNING_USE_ENV_VARIABLE,"Using value of environment variable.")

; ----------------------------------------------------------------------------------


;enum MainWindowModes 
MAIN_MODE_NO_CHANGE:=0, MAIN_MODE_LINES:=1, MAIN_MODE_VARS:=2
	, MAIN_MODE_HOTKEYS:=3, MAIN_MODE_KEYHISTORY:=4, MAIN_MODE_REFRESH:=5

InputBoxType:= "
(
	LPTSTR title;
	LPTSTR text;
	int width;
	int height;
	int xpos;
	int ypos;
	Var *output_var;
	TCHAR password_char;
	LPTSTR default_string;
	DWORD timeout;
	HWND hwnd;
	HFONT font;
)"

SplashType := "
(
	int width;
	int height;
	int bar_pos;  //  The amount of progress of the bar (it's position).
	int margin_x; //  left/right margin
	int margin_y; //  top margin
	int text1_height; //  Height of main text control.
	int object_width;   //  Width of image.
	int object_height;  //  Height of the progress bar or image.
	HWND hwnd;
	int pic_type;
	union
	{
		HBITMAP pic_bmp; //  For SplashImage.
		HICON pic_icon;
	};
	HWND hwnd_bar;
	HWND hwnd_text1;  //  MainText
	HWND hwnd_text2;  //  SubText
	HFONT hfont1; //  Main
	HFONT hfont2; //  Sub
	HBRUSH hbrush; //  Window background color brush.
	COLORREF color_bk; //  The background color itself.
	COLORREF color_text; //  Color of the font.
)"

define(INPUTBOX_DEFAULT,INT_MIN)

define(LineNumberType,"UINT")
define(FileIndexType,"WORD") ;  Use WORD to conserve memory due to its use in the Line class (adjacency to other members and due to 4-byte struct alignment).
define(ABSOLUTE_MAX_SOURCE_FILES,0xFFFF) ;  Keep this in sync with the capacity of the type above.  Actually it could hold 0xFFFF+1, but avoid the final item for maintainability (otherwise max-index won't be able to fit inside a variable of that type).

define(LOADING_FAILED,UINT_MAX)

;  -2 for the beginning and ending g_DerefChars:
define(MAX_VAR_NAME_LENGTH,UCHAR_MAX - 2)
define(MAX_FUNCTION_PARAMS,UCHAR_MAX) ;  Also conserves stack space to support future attributes such as param default values.
define(MAX_DEREFS_PER_ARG,512)

define(DerefLengthType,"WORD") ;  WORD might perform better than UCHAR, but this can be changed to UCHAR if another field is ever needed in the struct.
define(DerefParamCountType,"UCHAR")
define(DEREF_VARIADIC,2)
DerefType := "
(
	LPTSTR marker;
	union
	{
		Var *var;
		Func *func;
	};
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	BYTE is_function;

	DerefParamCountType param_count; //  The actual number of parameters present in this function *call*.  Left uninitialized except for functions.
	DerefLengthType length; //  Listed only after byte-sized fields, due to it being a WORD.
)"

define(ArgTypeType,"UCHAR")  ;  UCHAR vs. an enum, to save memory.
define(ARG_TYPE_NORMAL,0)
define(ARG_TYPE_INPUT_VAR,1)
define(ARG_TYPE_OUTPUT_VAR,2)

ArgStruct := "
(
	ArgTypeType type;
	bool is_expression; //  Whether this ARG is known to contain an expression.
	//  Above are kept adjacent to each other to conserve memory (any fields that aren't an even
	//  multiple of 4, if adjacent to each other, consume less memory due to default byte alignment
	//  setting [which helps performance]).
	WORD length; //  Keep adjacent to above so that it uses no extra memory. This member was added in v1.0.44.14 to improve runtime performance.  It relies on the fact that an arg's literal text can't be longer than LINE_SIZE.
	LPTSTR text;
	DerefType *deref;  //  Will hold a NULL-terminated array of var-deref locations within <text>.
	ExprTokenType *postfix;  //  An array of tokens in postfix order. Also used for ACT_ADD and others to store pre-converted binary integers.
)"


;  Some of these lengths and such are based on the MSDN example at
;  http:; msdn.microsoft.com/library/default.asp?url=/library/en-us/sysinfo/base/enumerating_registry_subkeys.asp:
;  FIX FOR v1.0.48: 
;  OLDER (v1.0.44.07): Someone reported that a stack overflow was possible, implying that it only happens
;  during extremely deep nesting of subkey names (perhaps a hundred or more nested subkeys).  Upon review, it seems
;  that the prior limit of 16383 for value-name-length is higher than needed; testing shows that a value name can't
;  be longer than 259 (limit might even be 255 if API vs. RegEdit is used to create the name).  Testing also shows
;  that the total path name of a registry item (including item/value name but excluding the name of the root key)
;  obeys the same limit BUT ONLY within the RegEdit GUI.  RegEdit seems capable of importing subkeys whose names
;  (even without any value name appended) are longer than 259 characters (see comments higher above).
define(MAX_REG_ITEM_SIZE,1024) ;  Needs to be greater than 260 (see comments above), but I couldn't find any documentation at MSDN or the web about the max length of a subkey name.  One example at MSDN RegEnumKeyEx() uses MAX_KEY_LENGTH=255 and MAX_VALUE_NAME=16383, but clearly MAX_KEY_LENGTH should be larger.
define(REG_SUBKEY,-2) ;  Custom type, not standard in Windows.
RegItemStruct := "
(
	HKEY root_key_type, root_key; //  root_key_type is always a local HKEY, whereas root_key can be a remote handle.
	TCHAR subkey[" MAX_REG_ITEM_SIZE "]; //  The branch of the registry where this subkey or value is located.
	TCHAR name[" MAX_REG_ITEM_SIZE "]; //  The subkey or value name.
	DWORD type; //  Value Type (e.g REG_DWORD).
	FILETIME ftLastWriteTime; //  Non-initialized.
)"
define(READ_FILE_LINE_SIZE,64 * 1024)  ;  This is also used by FileReadLine().
LoopReadFileStruct := "
(
	TextStream *mReadFile, *mWriteFile;
	TCHAR mWriteFileName[" MAX_PATH "];
	TCHAR mCurrentLine[" READ_FILE_LINE_SIZE "];
)"

;  TextStream flags for LoadIncludedFile (script files), file-reading loops and FileReadLine.
;  Do not lock read/write: older versions used fopen(), which is implicitly permissive.
;~ define(DEFAULT_READ_FLAGS (TextStream::READ | TextStream::EOL_CRLF | TextStream::EOL_ORPHAN_CR | TextStream::SHARE_READ | TextStream::SHARE_WRITE)


define(ArgCountType,"UCHAR")
define(MAX_ARGS,20)   ;  Maximum number of args used by any command.


;enum DllArgTypes {
	  DLL_ARG_INVALID:=0
	, DLL_ARG_ASTR:=1
	, DLL_ARG_INT:=2
	, DLL_ARG_SHORT:=3
	, DLL_ARG_CHAR:=4
	, DLL_ARG_INT64:=5
	, DLL_ARG_FLOAT:=6
	, DLL_ARG_DOUBLE:=7
	, DLL_ARG_WSTR:=8
	, DLL_ARG_STR  := A_IsUnicode ? DLL_ARG_WSTR : DLL_ARG_ASTR
	, DLL_ARG_xSTR := A_IsUnicode ? DLL_ARG_ASTR : DLL_ARG_WSTR ;  To simplify some sections.
  ;  Some sections might rely on DLL_ARG_INVALID being 0.


;  Note that currently this value must fit into a sc_type variable because that is how TextToKey()
;  stores it in the hotkey class.  sc_type is currently a UINT, and will always be at least a
;  WORD in size, so it shouldn't be much of an issue:
define(MAX_JOYSTICKS,16)  ;  The maximum allowed by any Windows operating system.
define(MAX_JOY_BUTTONS,32) ;  Also the max that Windows supports.
;enum JoyControls {
JOYCTRL_INVALID:=0, JOYCTRL_XPOS:=1, JOYCTRL_YPOS:=2, JOYCTRL_ZPOS:=3
, JOYCTRL_RPOS:=4, JOYCTRL_UPOS:=5, JOYCTRL_VPOS:=6, JOYCTRL_POV:=7
, JOYCTRL_NAME:=8, JOYCTRL_BUTTONS:=9, JOYCTRL_AXES:=10, JOYCTRL_INFO:=11
, JOYCTRL_1:=12, JOYCTRL_2:=13, JOYCTRL_3:=14, JOYCTRL_4:=15, JOYCTRL_5:=16, JOYCTRL_6:=17, JOYCTRL_7:=18, JOYCTRL_8  :=19 ;  Buttons.
, JOYCTRL_9:=20, JOYCTRL_10:=21, JOYCTRL_11:=22, JOYCTRL_12:=23, JOYCTRL_13:=24, JOYCTRL_14:=25, JOYCTRL_15:=26, JOYCTRL_16:=27
, JOYCTRL_17:=28, JOYCTRL_18:=29, JOYCTRL_19:=30, JOYCTRL_20:=31, JOYCTRL_21:=32, JOYCTRL_22:=33, JOYCTRL_23:=34, JOYCTRL_24:=35
, JOYCTRL_25:=36, JOYCTRL_26:=37, JOYCTRL_27:=38, JOYCTRL_28:=39, JOYCTRL_29:=40, JOYCTRL_30:=41, JOYCTRL_31:=42, JOYCTRL_32:=43
, JOYCTRL_BUTTON_MAX := JOYCTRL_32

IS_JOYSTICK_BUTTON(joy){
	global
	Return (joy >= JOYCTRL_1 && joy <= JOYCTRL_BUTTON_MAX)
}

;enum WinGetCmds {
WINGET_CMD_INVALID:=0, WINGET_CMD_ID:=1, WINGET_CMD_IDLAST:=2, WINGET_CMD_PID:=3, WINGET_CMD_PROCESSNAME:=4
	, WINGET_CMD_COUNT:=5, WINGET_CMD_LIST:=6, WINGET_CMD_MINMAX:=7, WINGET_CMD_CONTROLLIST:=8, WINGET_CMD_CONTROLLISTHWND:=9
	, WINGET_CMD_STYLE:=10, WINGET_CMD_EXSTYLE:=11, WINGET_CMD_TRANSPARENT:=12, WINGET_CMD_TRANSCOLOR:=13, WINGET_CMD_PROCESSPATH:=14


;enum SysGetCmds {
SYSGET_CMD_INVALID:=0, SYSGET_CMD_METRICS:=1, SYSGET_CMD_MONITORCOUNT:=2, SYSGET_CMD_MONITORPRIMARY:=3
	, SYSGET_CMD_MONITORAREA:=4, SYSGET_CMD_MONITORWORKAREA:=5, SYSGET_CMD_MONITORNAME:=6
;enum TransformCmds {
TRANS_CMD_INVALID:=0, TRANS_CMD_ASC:=1, TRANS_CMD_CHR:=2, TRANS_CMD_DEREF:=3
	, TRANS_CMD_UNICODE:=4, TRANS_CMD_HTML:=5
	, TRANS_CMD_MOD:=6, TRANS_CMD_POW:=7, TRANS_CMD_EXP:=8, TRANS_CMD_SQRT:=9, TRANS_CMD_LOG:=10, TRANS_CMD_LN:=11
	, TRANS_CMD_ROUND:=12, TRANS_CMD_CEIL:=13, TRANS_CMD_FLOOR:=14, TRANS_CMD_ABS:=15
	, TRANS_CMD_SIN:=16, TRANS_CMD_COS:=17, TRANS_CMD_TAN:=18, TRANS_CMD_ASIN:=19, TRANS_CMD_ACOS:=20, TRANS_CMD_ATAN:=21
	, TRANS_CMD_BITAND:=22, TRANS_CMD_BITOR:=23, TRANS_CMD_BITXOR:=24, TRANS_CMD_BITNOT:=25
	, TRANS_CMD_BITSHIFTLEFT:=26, TRANS_CMD_BITSHIFTRIGHT:=27

;enum MenuCommands {
MENU_CMD_INVALID:=0, MENU_CMD_SHOW:=1, MENU_CMD_USEERRORLEVEL:=2
	, MENU_CMD_ADD:=5, MENU_CMD_RENAME:=6, MENU_CMD_CHECK:=7, MENU_CMD_UNCHECK:=8, MENU_CMD_TOGGLECHECK:=9
	, MENU_CMD_ENABLE:=10, MENU_CMD_DISABLE:=11, MENU_CMD_TOGGLEENABLE:=12
	, MENU_CMD_STANDARD:=13, MENU_CMD_NOSTANDARD:=14, MENU_CMD_COLOR:=15, MENU_CMD_DEFAULT:=16, MENU_CMD_NODEFAULT:=17
	, MENU_CMD_DELETE:=20, MENU_CMD_DELETEALL:=21, MENU_CMD_TIP:=22, MENU_CMD_ICON:=23, MENU_CMD_NOICON:=24
	, MENU_CMD_CLICK:=25, MENU_CMD_MAINWINDOW:=26, MENU_CMD_NOMAINWINDOW:=27

define(AHK_LV_SELECT,0x0100)
define(AHK_LV_DESELECT,0x0200)
define(AHK_LV_FOCUS,0x0400)
define(AHK_LV_DEFOCUS,0x0800)
define(AHK_LV_CHECK,0x1000)
define(AHK_LV_UNCHECK,0x2000)
define(AHK_LV_DROPHILITE,0x4000)
define(AHK_LV_UNDROPHILITE,0x8000)
;  Although there's no room remaining in the BYTE for LVIS_CUT (AHK_LV_CUT) [assuming it's ever needed],
;  it might be possible to squeeze more info into it as follows:
;  Each pair of bits can represent three values (other than zero).  But since only two values are needed
;  (since an item can't be both selected an deselected simultaneously), one value in each pair is available
;  for future use such as LVIS_CUT.

;enum GuiCommands {
GUI_CMD_INVALID:=0, GUI_CMD_OPTIONS:=1, GUI_CMD_ADD:=2, GUI_CMD_MARGIN:=3, GUI_CMD_MENU:=4
	, GUI_CMD_SHOW:=5, GUI_CMD_SUBMIT:=6, GUI_CMD_CANCEL:=7, GUI_CMD_MINIMIZE:=8, GUI_CMD_MAXIMIZE:=9, GUI_CMD_RESTORE:=10
	, GUI_CMD_DESTROY:=11, GUI_CMD_FONT:=12, GUI_CMD_TAB:=13, GUI_CMD_LISTVIEW:=14, GUI_CMD_TREEVIEW:=15, GUI_CMD_DEFAULT:=16
	, GUI_CMD_COLOR:=17, GUI_CMD_FLASH:=18

;enum GuiControlCmds {
GUICONTROL_CMD_INVALID:=0, GUICONTROL_CMD_OPTIONS:=1, GUICONTROL_CMD_CONTENTS:=2, GUICONTROL_CMD_TEXT:=3
	, GUICONTROL_CMD_MOVE:=4, GUICONTROL_CMD_MOVEDRAW:=5, GUICONTROL_CMD_FOCUS:=6, GUICONTROL_CMD_ENABLE:=7, GUICONTROL_CMD_DISABLE:=8
	, GUICONTROL_CMD_SHOW:=9, GUICONTROL_CMD_HIDE:=10, GUICONTROL_CMD_CHOOSE:=11, GUICONTROL_CMD_CHOOSESTRING:=12
	, GUICONTROL_CMD_FONT:=13


;enum GuiControlGetCmds {
GUICONTROLGET_CMD_INVALID:=0, GUICONTROLGET_CMD_CONTENTS:=1, GUICONTROLGET_CMD_POS:=2
	, GUICONTROLGET_CMD_FOCUS:=3, GUICONTROLGET_CMD_FOCUSV:=4, GUICONTROLGET_CMD_ENABLED:=5, GUICONTROLGET_CMD_VISIBLE:=6
	, GUICONTROLGET_CMD_HWND:=7


define(GuiControls,"UCHAR")
;enum GuiControlTypes {
GUI_CONTROL_INVALID:=0 ;  GUI_CONTROL_INVALID must be zero due to things like ZeroMemory() on the struct.
	, GUI_CONTROL_TEXT:=1, GUI_CONTROL_PIC:=2, GUI_CONTROL_GROUPBOX:=3
	, GUI_CONTROL_BUTTON:=4, GUI_CONTROL_CHECKBOX:=5, GUI_CONTROL_RADIO:=6
	, GUI_CONTROL_DROPDOWNLIST:=7, GUI_CONTROL_COMBOBOX:=8
	, GUI_CONTROL_LISTBOX:=9, GUI_CONTROL_LISTVIEW:=10, GUI_CONTROL_TREEVIEW:=11
	, GUI_CONTROL_EDIT:=12, GUI_CONTROL_DATETIME:=13, GUI_CONTROL_MONTHCAL:=14, GUI_CONTROL_HOTKEY:=15
	, GUI_CONTROL_UPDOWN:=16, GUI_CONTROL_SLIDER:=17, GUI_CONTROL_PROGRESS:=18, GUI_CONTROL_TAB:=19, GUI_CONTROL_TAB2:=20
	, GUI_CONTROL_STATUSBAR:=21 ;  Kept last to reflect it being bottommost in switch()s (for perf), since not too often used.

;enum ThreadCommands {
THREAD_CMD_INVALID:=0, THREAD_CMD_PRIORITY:=1, THREAD_CMD_INTERRUPT:=2, THREAD_CMD_NOTIMERS:=3

define(PROCESS_PRIORITY_LETTERS,"LBNAHR")
;enum ProcessCmds {
PROCESS_CMD_INVALID:=0, PROCESS_CMD_EXIST:=1, PROCESS_CMD_CLOSE:=2, PROCESS_CMD_PRIORITY:=3
	, PROCESS_CMD_WAIT:=4, PROCESS_CMD_WAITCLOSE:=5

;enum ControlCmds {
CONTROL_CMD_INVALID:=0, CONTROL_CMD_CHECK:=1, CONTROL_CMD_UNCHECK:=2
	, CONTROL_CMD_ENABLE:=3, CONTROL_CMD_DISABLE:=4, CONTROL_CMD_SHOW:=5, CONTROL_CMD_HIDE:=6
	, CONTROL_CMD_STYLE:=7, CONTROL_CMD_EXSTYLE:=8
	, CONTROL_CMD_SHOWDROPDOWN:=9, CONTROL_CMD_HIDEDROPDOWN:=10
	, CONTROL_CMD_TABLEFT:=11, CONTROL_CMD_TABRIGHT:=12
	, CONTROL_CMD_ADD:=13, CONTROL_CMD_DELETE:=14, CONTROL_CMD_CHOOSE:=15
	, CONTROL_CMD_CHOOSESTRING:=16, CONTROL_CMD_EDITPASTE:=17

;enum ControlGetCmds {
CONTROLGET_CMD_INVALID:=0, CONTROLGET_CMD_CHECKED:=1, CONTROLGET_CMD_ENABLED:=2
	, CONTROLGET_CMD_VISIBLE:=3, CONTROLGET_CMD_TAB:=4, CONTROLGET_CMD_FINDSTRING:=5
	, CONTROLGET_CMD_CHOICE:=6, CONTROLGET_CMD_LIST:=7, CONTROLGET_CMD_LINECOUNT:=8, CONTROLGET_CMD_CURRENTLINE:=9
	, CONTROLGET_CMD_CURRENTCOL:=10, CONTROLGET_CMD_LINE:=11, CONTROLGET_CMD_SELECTED:=12
	, CONTROLGET_CMD_STYLE:=13, CONTROLGET_CMD_EXSTYLE:=14, CONTROLGET_CMD_HWND:=15

;enum DriveCmds {
DRIVE_CMD_INVALID:=0, DRIVE_CMD_EJECT:=1, DRIVE_CMD_LOCK:=2, DRIVE_CMD_UNLOCK:=3, DRIVE_CMD_LABEL:=4

;enum DriveGetCmds {
DRIVEGET_CMD_INVALID:=0, DRIVEGET_CMD_LIST:=1, DRIVEGET_CMD_FILESYSTEM:=2, DRIVEGET_CMD_LABEL:=3
	, DRIVEGET_CMD_SETLABEL:=4, DRIVEGET_CMD_SERIAL:=5, DRIVEGET_CMD_TYPE:=6, DRIVEGET_CMD_STATUS:=7
	, DRIVEGET_CMD_STATUSCD:=8, DRIVEGET_CMD_CAPACITY:=9

;enum WinSetAttributes {
WINSET_INVALID:=0, WINSET_TRANSPARENT:=1, WINSET_TRANSCOLOR:=2, WINSET_ALWAYSONTOP:=3
	, WINSET_BOTTOM:=4, WINSET_TOP:=5, WINSET_STYLE:=6, WINSET_EXSTYLE:=7, WINSET_REDRAW:=8, WINSET_ENABLE:=9, WINSET_DISABLE:=10
	, WINSET_REGION:=11

;  Bitwise flags:
define(FSF_ALLOW_CREATE,0x01)
define(FSF_EDITBOX,0x02)
define(FSF_NONEWDIALOG,0x04)
define(SW_NONE,-1)

;  Shouldn't go much higher than 400 since the main window's Edit control is currently limited
;  to 64KB to be compatible with the Win9x limit.  Avg. line length is probably under 100 for
;  the vast majority of scripts, so 400 seems unlikely to exceed the buffer size.  Even in the
;  worst case where the buffer size is exceeded, the text is simply truncated, so it's not too bad:
define(LINE_LOG_SIZE,400)  ;  See above.

Line := "
(
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	ActionTypeType mActionType; //  What type of line this is.
	ArgCountType mArgc; //  How many arguments exist in mArg[].
	FileIndexType mFileIndex; //  Which file the line came from.  0 is the first, and it's the main script file.
	LineNumberType mLineNumber;  //  The line number in the file from which the script was loaded, for debugging.

	ArgStruct *mArg; //  Will be used to hold a dynamic array of dynamic Args.
	AttributeType mAttribute;
	Line *mPrevLine, *mNextLine; //  The prev & next lines adjacent to this one in the linked list; NULL if none.
	Line *mRelatedLine;  //  e.g. the 'else' that belongs to this 'if'
	Line *mParentLine; //  Indicates the parent (owner) of this line.
)"



Label := "
(
	LPTSTR mName;
	Line *mJumpToLine;
	Label *mPrevLabel, *mNextLabel; //  Prev & Next items in linked list.
)"


;enum FuncParamDefaults {
PARAM_DEFAULT_NONE:=0, PARAM_DEFAULT_STR:=1, PARAM_DEFAULT_INT:=2, PARAM_DEFAULT_FLOAT

FuncParam := "
(
	Var *var;
	WORD is_byref; //  Boolean, but defined as WORD in case it helps data alignment and/or performance (BOOL vs. WORD didn't help benchmarks).
	WORD default_type;
	union {LPTSTR default_str; __int64 default_int64; double default_double;};
)"

FuncCallData := "
(
	Func *mFunc; //  If non-NULL, indicates this is a UDF whose vars will need to be freed/restored later.
	VarBkp *mBackup; //  For UDFs.
	int mBackupCount;
)"

define(mDefaultVarType,"UCHAR")
;  Keep small members adjacent to each other to save space and improve perf. due to byte alignment:
define(VAR_DECLARE_NONE,0)
define(VAR_DECLARE_GLOBAL,1)
define(VAR_DECLARE_LOCAL,2)
define(VAR_DECLARE_STATIC,3)
Func := "
(
	LPTSTR mName;
	union {BuiltInFunctionType mBIF; Line *mJumpToLine;};
	FuncParam *mParam;  //  Will hold an array of FuncParams.
	int mParamCount; //  The number of items in the above array.  This is also the function's maximum number of params.
	int mMinParams;  //  The number of mandatory parameters (populated for both UDFs and built-in's).
	Var **mVar, **mLazyVar; //  Array of pointers-to-variable, allocated upon first use and later expanded as needed.
	int mVarCount, mVarCountMax, mLazyVarCount; //  Count of items in the above array as well as the maximum capacity.
	int mInstances; //  How many instances currently exist on the call stack (due to recursion or thread interruption).  Future use: Might be used to limit how deep recursion can go to help prevent stack overflow.

	bool mIsBuiltIn; //  Determines contents of union. Keep this member adjacent/contiguous with the above.
	//  Note that it's possible for a built-in function such as WinExist() to become a normal/UDF via
	//  override in the script.  So mIsBuiltIn should always be used to determine whether the function
	//  is truly built-in, not its name.
	bool mIsVariadic;
)"



ScriptTimer := "
(
	Label *mLabel;
	DWORD mPeriod; //  v1.0.36.33: Changed from int to DWORD to double its capacity.
	DWORD mTimeLastRun;  //  TickCount
	int mPriority;  //  Thread priority relative to other threads, default 0.
	UCHAR mExistingThreads;  //  Whether this timer is already running its subroutine.
	bool mEnabled;
	bool mRunOnlyOnce;
	ScriptTimer *mNextTimer;  //  Next items in linked list
)"


MsgMonitorStruct := "
(
	Func *func;
	UINT msg;
	//  Keep any members smaller than 4 bytes adjacent to save memory:
	short instance_count;  //  Distinct from func.mInstances because the script might have called the function explicitly.
	short max_instances; //  v1.0.47: Support more than one thread.
)"



define(MAX_MENU_NAME_LENGTH,MAX_PATH) ;  For both menu and menu item names.
UserMenu := "
(
	LPTSTR mName;  //  Dynamically allocated.
	UserMenuItem *mFirstMenuItem, *mLastMenuItem, *mDefault;
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	bool mIncludeStandardItems;
	int mClickCount; //  How many clicks it takes to trigger the default menu item.  2 = double-click
	UINT mMenuItemCount;  //  The count of user-defined menu items (doesn't include the standard items, if present).
	UserMenu *mNextMenu;  //  Next item in linked list
	HMENU mMenu;
	MenuTypeType mMenuType; //  MENU_TYPE_POPUP (via CreatePopupMenu) vs. MENU_TYPE_BAR (via CreateMenu).
	HBRUSH mBrush;   //  Background color to apply to menu.
	COLORREF mColor; //  The color that corresponds to the above.
)"


UserMenuItem := "
(
	LPTSTR mName;  //  Dynamically allocated.
	size_t mNameCapacity;
	UINT mMenuID;
	Label *mLabel;
	UserMenu *mSubmenu;
	UserMenu *mMenu;  //  The menu to which this item belongs.  Needed to support script var A_ThisMenu.
	int mPriority;
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	bool mEnabled, mChecked;
	UserMenuItem *mNextMenuItem;  //  Next item in linked list
	
	union
	{
		//  L17: Implementation of menu item icons is OS-dependent (g_os.IsWinVistaOrLater()).
		
		//  Older versions of Windows do not support alpha channels in menu item bitmaps, so owner-drawing
		//  must be used for icons with transparent backgrounds to appear correctly. Owner-drawing also
		//  prevents the icon colours from inverting when the item is selected. DrawIcon() gives the best
		//  results, so we store the icon handle as is.
		// 
		HICON mIcon;
		
		//  Windows Vista and later support alpha channels via 32-bit bitmaps. Since owner-drawing prevents
		//  visual styles being applied to menus, we convert each icon to a 32-bit bitmap, calculating the
		//  alpha channel as necessary. This is done only once, when the icon is initially set.
		// 
		HBITMAP mBitmap;
	};
)"


define(MAX_FONT_NAME_LENGTH,63)  ;  Longest name I've seen is 29 chars, "Franklin Gothic Medium Italic". Anyway, there's protection against overflow.
FontType := "
(
	
	TCHAR name[MAX_FONT_NAME_LENGTH + 1];
	//  Keep any fields that aren't an even multiple of 4 adjacent to each other.  This conserves memory
	//  due to byte-alignment:
	bool italic;
	bool underline;
	bool strikeout;
	int point_size; //  Decided to use int vs. float to simplify the code in many places. Fractional sizes seem rarely needed.
	int weight;
	DWORD quality; //  L19: Allow control over font quality (anti-aliasing, etc.).
	HFONT hfont;
)"


define(LV_REMOTE_BUF_SIZE,1024)  ;  8192 (below) seems too large in hindsight, given that an LV can only display the first 260 chars in a field.
define(LV_TEXT_BUF_SIZE,8192)  ;  Max amount of text in a ListView sub-item.  Somewhat arbitrary: not sure what the real limit is, if any.

;enum LVColTypes {
LV_COL_TEXT:=0, LV_COL_INTEGER:=1, LV_COL_FLOAT:=2 ;  LV_COL_TEXT must be zero so that it's the default with ZeroMemory.
lv_col_type := "
(
	UCHAR type;             //  UCHAR vs. enum LVColTypes to save memory.
	bool sort_disabled;     //  If true, clicking the column will have no automatic sorting effect.
	UCHAR case_sensitive;   //  Ignored if type isn't LV_COL_TEXT.  SCS_INSENSITIVE is the default.
	bool unidirectional;    //  Sorting cannot be reversed/toggled.
	bool prefer_descending; //  Whether this column defaults to descending order (on first click or for unidirectional).
)"
define(LV_MAX_COLUMNS,200)
lv_attrib_type := "
(
	int sorted_by_col; //  Index of column by which the control is currently sorted (-1 if none).
	bool is_now_sorted_ascending; //  The direction in which the above column is currently sorted.
	bool no_auto_sort; //  Automatic sorting disabled.
	lv_col_type col[" LV_MAX_COLUMNS "];
	int col_count; //  Number of columns currently in the above array.
	int row_count_hint;
)"

define(TabControlIndexType,"UCHAR")
define(TabIndexType,"UCHAR")
;  Keep the below in sync with the size of the types above:
define(MAX_TAB_CONTROLS,255)  ;  i.e. the value 255 itself is reserved to mean "doesn't belong to a tab".
define(MAX_TABS_PER_CONTROL,256)
define(GUI_CONTROL_ATTRIB_IMPLICIT_CANCEL,0x01)
define(GUI_CONTROL_ATTRIB_ALTSUBMIT,0x02)
define(GUI_CONTROL_ATTRIB_LABEL_IS_RUNNING,0x04)
define(GUI_CONTROL_ATTRIB_EXPLICITLY_HIDDEN,0x08)
define(GUI_CONTROL_ATTRIB_EXPLICITLY_DISABLED,0x10)
define(GUI_CONTROL_ATTRIB_BACKGROUND_DEFAULT,0x20) ;  i.e. Don't conform to window/control background color; use default instead.
define(GUI_CONTROL_ATTRIB_BACKGROUND_TRANS,0x40) ;  i.e. Leave this control's background transparent.
define(GUI_CONTROL_ATTRIB_ALTBEHAVIOR,0x80) ;  For sliders: Reverse/Invert the value. Also for up-down controls (ALT means 32-bit vs. 16-bit). Also for ListView and Tab, and for Edit.
GuiControlType := "
(
	HWND hwnd;
	//  Keep any fields that are smaller than 4 bytes adjacent to each other.  This conserves memory
	//  due to byte-alignment.  It has been verified to save 4 bytes per struct in this case:
	GuiControls type;
	
	UCHAR attrib; //  A field of option flags/bits defined above.
	TabControlIndexType tab_control_index; //  Which tab control this control belongs to, if any.
	TabIndexType tab_index; //  For type==TAB, this stores the tab control's index.  For other types, it stores the page.
	Var *output_var;
	Label *jump_to_label;
	union
	{
		COLORREF union_color;  //  Color of the control's text.
		HBITMAP union_hbitmap; //  For PIC controls, stores the bitmap.
		//  Note: Pic controls cannot obey the text color, but they can obey the window's background
		//  color if the picture's background is transparent (at least in the case of icons on XP).
		lv_attrib_type *union_lv_attrib; //  For ListView: Some attributes and an array of columns.
	};
)"

define(GUI_MAX_TABSTOPS,50)
GuiControlOptionsType := "
(
	DWORD style_add, style_remove, exstyle_add, exstyle_remove, listview_style;
	int listview_view; //  Viewing mode, such as LVS_ICON, LVS_REPORT.  Int vs. DWORD to more easily use any negative value as 'invalid'.
	HIMAGELIST himagelist;
	Var *hwnd_output_var; //  v1.0.46.01: Allows a script to retrieve the control's HWND upon creation of control.
	int x, y, width, height;  //  Position info.
	float row_count;
	int choice;  //  Which item of a DropDownList/ComboBox/ListBox to initially choose.
	int range_min, range_max;  //  Allowable range, such as for a slider control.
	int tick_interval; //  The interval at which to draw tickmarks for a slider control.
	int line_size, page_size; //  Also for slider.
	int thickness;  //  Thickness of slider's thumb.
	int tip_side; //  Which side of the control to display the tip on (0 to use default side).
	GuiControlType *buddy1, *buddy2;
	COLORREF color_listview; //  Used only for those controls that need control.union_color for something other than color.
	COLORREF color_bk; //  Control's background color.
	int limit;   //  The max number of characters to permit in an edit or combobox's edit (also used by ListView).
	int hscroll_pixels;  //  The number of pixels for a listbox's horizontal scrollbar to be able to scroll.
	int checked; //  When zeroed, struct contains default starting state of checkbox/radio, i.e. BST_UNCHECKED.
	int icon_number; //  Which icon of a multi-icon file to use.  Zero means use-default, i.e. the first icon.
	UINT tabstop[GUI_MAX_TABSTOPS]; //  Array of tabstops for the interior of a multi-line edit control.
	UINT tabstop_count;  //  The number of entries in the above array.
	SYSTEMTIME sys_time[2]; //  Needs to support 2 elements for MONTHCAL's multi/range mode.
	SYSTEMTIME sys_time_range[2];
	DWORD gdtr, gdtr_range; //  Used in connection with sys_time and sys_time_range.
	ResultType redraw;  //  Whether the state of WM_REDRAW should be changed.
	TCHAR password_char; //  When zeroed, indicates 'use default password' for an edit control with the password style.
	bool range_changed;
	bool color_changed; //  To discern when a control has been put back to the default color. [v1.0.26]
	bool start_new_section;
	bool use_theme; //  v1.0.32: Provides the means for the window's current setting of mUseTheme to be overridden.
	bool listview_no_auto_sort; //  v1.0.44: More maintainable and frees up GUI_CONTROL_ATTRIB_ALTBEHAVIOR for other uses.
)"


define(GUI_STANDARD_WIDTH_MULTIPLIER,15) ;  This times font size = width, if all other means of determining it are exhausted.

;  Update for v1.0.21: Reduced it to 8 vs. 9 because 8 causes the height each edit (with the
;  default style) to exactly match that of a Combo or DropDownList.  This type of spacing seems
;  to be what other apps use too, and seems to make edits stand out a little nicer:
define(GUI_CTL_VERTICAL_DEADSPACE,8)
define(MAX_GUI_FONTS,200)  ;  v1.0.44.14: Increased from 100 to 200 due to feedback that 100 wasn't enough.  But to alleviate memory usage, the array is now allocated upon first use.

GuiType := "
(
	HWND mHwnd, mStatusBarHwnd;
	//  Control IDs are higher than their index in the array by the below amount.  This offset is
	//  necessary because windows that behave like dialogs automatically return IDOK and IDCANCEL in
	//  response to certain types of standard actions:
	GuiIndexType mWindowIndex;
	GuiIndexType mControlCount;
	GuiIndexType mControlCapacity; //  How many controls can fit into the current memory size of mControl.
	GuiControlType *mControl; //  Will become an array of controls when the window is first created.
	GuiIndexType mDefaultButtonIndex; //  Index vs. pointer is needed for some things.
	Label *mLabelForClose, *mLabelForEscape, *mLabelForSize, *mLabelForDropFiles, *mLabelForContextMenu;
	bool mLabelForCloseIsRunning, mLabelForEscapeIsRunning, mLabelForSizeIsRunning; //  DropFiles doesn't need one of these.
	bool mLabelsHaveBeenSet;
	DWORD mStyle, mExStyle; //  Style of window.
	bool mInRadioGroup; //  Whether the control currently being created is inside a prior radio-group.
	bool mUseTheme;  //  Whether XP theme and styles should be applied to the parent window and subsequently added controls.
	HWND mOwner;  //  The window that owns this one, if any.  Note that Windows provides no way to change owners after window creation.
	TCHAR mDelimiter;  //  The default field delimiter when adding items to ListBox, DropDownList, ListView, etc.
	int mCurrentFontIndex;
	GuiControlType *mCurrentListView, *mCurrentTreeView; //  The ListView and TreeView upon which the LV/TV functions operate.
	TabControlIndexType mTabControlCount;
	TabControlIndexType mCurrentTabControlIndex; //  Which tab control of the window.
	TabIndexType mCurrentTabIndex; //  Which tab of a tab control is currently the default for newly added controls.
	COLORREF mCurrentColor;       //  The default color of text in controls.
	COLORREF mBackgroundColorWin; //  The window's background color itself.
	HBRUSH mBackgroundBrushWin;   //  Brush corresponding to the above.
	COLORREF mBackgroundColorCtl; //  Background color for controls.
	HBRUSH mBackgroundBrushCtl;   //  Brush corresponding to the above.
	HDROP mHdrop;                 //  Used for drag and drop operations.
	HICON mIconEligibleForDestruction; //  The window's icon, which can be destroyed when the window is destroyed if nothing else is using it.
	HICON mIconEligibleForDestructionSmall; //  L17: A window may have two icons: ICON_SMALL and ICON_BIG.
	int mMarginX, mMarginY, mPrevX, mPrevY, mPrevWidth, mPrevHeight, mMaxExtentRight, mMaxExtentDown
		, mSectionX, mSectionY, mMaxExtentRightSection, mMaxExtentDownSection;
	LONG mMinWidth, mMinHeight, mMaxWidth, mMaxHeight;
	bool mGuiShowHasNeverBeenDone, mFirstActivation, mShowIsInProgress, mDestroyWindowHasBeenCalled;
	bool mControlWidthWasSetByContents; //  Whether the most recently added control was auto-width'd to fit its contents.
)"

define(MAX_NESTED_CLASSES,5)
define(MAX_CLASS_NAME_LENGTH,UCHAR_MAX)
Script := "
(
	Var **mVar, **mLazyVar; //  Array of pointers-to-variable, allocated upon first use and later expanded as needed.
	int mVarCount, mVarCountMax, mLazyVarCount; //  Count of items in the above array as well as the maximum capacity.
	WinGroup *mFirstGroup, *mLastGroup;  //  The first and last variables in the linked list.
	int mCurrentFuncOpenBlockCount; //  While loading the script, this is how many blocks are currently open in the current function's body.
	bool mNextLineIsFunctionBody; //  Whether the very next line to be added will be the first one of the body.
	Var **mFuncExceptionVar;   //  A list of variables declared explicitly local or global.
	int mFuncExceptionVarCount; //  The number of items in the array.

	int mClassObjectCount;
	Object *mClassObject[" MAX_NESTED_CLASSES "]; //  Class definition currently being parsed.
	TCHAR mClassName[" (MAX_CLASS_NAME_LENGTH + 1) "]; //  Only used during load-time.

	//  These two track the file number and line number in that file of the line currently being loaded,
	//  which simplifies calls to ScriptError() and LineError() (reduces the number of params that must be passed).
	//  These are used ONLY while loading the script into memory.  After that (while the script is running),
	//  only mCurrLine is kept up-to-date:
	int mCurrFileIndex;
	LineNumberType mCombinedLineNumber; //  In the case of a continuation section/line(s), this is always the top line.

	bool mNoHotkeyLabels;

	bool mMenuUseErrorLevel;  //  Whether runtime errors should be displayed by the Menu command, vs. ErrorLevel.

	Line *mFirstLine, *mLastLine;     //  The first and last lines in the linked list.
	Line *mFirstStaticLine, *mLastStaticLine; //  The first and last static var initializer.
	Label *mFirstLabel, *mLastLabel;  //  The first and last labels in the linked list.
	Func **mFunc;  //  Binary-searchable array of functions.
	int mFuncCount, mFuncCountMax;
	Line *mTempLine; //  for use with dll Execute # Naveen N9
	Label *mTempLabel; //  for use with dll Execute # Naveen N9
	Func *mTempFunc; //  for use with dll Execute # Naveen N9
)"

;Var
Var := "
(
	// Keep VarBkp (above) in sync with any changes made to the members here.
	union // 64-bit members kept at the top of the struct to reduce the chance that they'll span 2 64-bit regions.
	{
		// Although the 8-byte members mContentsInt64 and mContentsDouble could be hung onto the struct
		// via a 4-byte-pointer, thus saving 4 bytes for each variable that never uses a binary number,
		// it doesn't seem worth it because the percentage of variables in typical scripts that will
		// acquire a cached binary number at some point seems likely to be high. A percentage of only
		// 50% would be enough to negate the savings because half the variables would consume 12 bytes
		// more than the version of AutoHotkey that has no binary-number caching, and the other half
		// would consume 4 more (due to the unused/empty pointer).  That would be an average of 8 bytes
		// extra; i.e. exactly the same as the 8 bytes used by putting the numbers directly into the struct.
		// In addition, there are the following advantages:
		// 1) Code less complicated, more maintainable, faster.
		// 2) Caching of binary numbers works even in recursive script functions.  By contrast, if the
		//    binary number were allocated on demand, recursive functions couldn't use caching because the
		//    memory from SimpleHeap could never be freed, thus producing a memory leak.
		// The main drawback is that some scripts are known to create a million variables or more, so the
		// extra 8 bytes per variable would increase memory load by 8+ MB (possily with a boost in
		// performance if those variables are ever numeric).
		__int64 mContentsInt64;
		double mContentsDouble;
		IObject *mObject; // L31
	};
	union
	{
		char *mByteContents;
		LPTSTR mCharContents;
	};
	union
	{
		VarSizeType mByteLength;  // How much is actually stored in it currently, excluding the zero terminator.
		Var *mAliasFor;           // The variable for which this variable is an alias.
	};
	union
	{
		VarSizeType mByteCapacity; // In bytes.  Includes the space for the zero terminator.
		BuiltInVarType mBIV;
	};
	AllocMethodType mHowAllocated; // Keep adjacent/contiguous with the below to save memory.
	#define VAR_ATTRIB_BINARY_CLIP          0x01
	#define VAR_ATTRIB_OBJECT		        0x02 // mObject contains an object; mutually exclusive of the cache attribs.
	#define VAR_ATTRIB_UNINITIALIZED        0x04 // Var requires initialization before use.
	#define VAR_ATTRIB_CONTENTS_OUT_OF_DATE 0x08
	#define VAR_ATTRIB_HAS_VALID_INT64      0x10 // Cache type 1. Mutually exclusive of the other two.
	#define VAR_ATTRIB_HAS_VALID_DOUBLE     0x20 // Cache type 2. Mutually exclusive of the other two.
	#define VAR_ATTRIB_NOT_NUMERIC          0x40 // Cache type 3. Some sections might rely these being mutually exclusive.
	#define VAR_ATTRIB_CACHE_DISABLED       0x80 // If present, indicates that caching of the above 3 is disabled.
	#define VAR_ATTRIB_CACHE (VAR_ATTRIB_HAS_VALID_INT64 | VAR_ATTRIB_HAS_VALID_DOUBLE | VAR_ATTRIB_NOT_NUMERIC)
	#define VAR_ATTRIB_OFTEN_REMOVED (VAR_ATTRIB_CACHE | VAR_ATTRIB_BINARY_CLIP | VAR_ATTRIB_CONTENTS_OUT_OF_DATE)
	VarAttribType mAttrib;  // Bitwise combination of the above flags.
	#define VAR_LOCAL			0x01
	#define VAR_LOCAL_FUNCPARAM	0x02 // Indicates this local var is a function's parameter.  VAR_LOCAL_DECLARED should also be set.
	#define VAR_LOCAL_STATIC	0x04 // Indicates this local var retains its value between function calls.
	#define VAR_LOCAL_DECLARED	0x08 // Indicates this local var was declared somehow, not automatic.
	UCHAR mIsLocal;  // Bitwise combination of the above flags.
	VarTypeType mType; // Keep adjacent/contiguous with the above due to struct alignment, to save memory.
	// Performance: Rearranging mType and the other byte-sized members with respect to each other didn't seem
	// to help performance.  However, changing VarTypeType from UCHAR to int did boost performance a few percent,
	// but even if it's not a fluke, it doesn't seem worth the increase in memory for scripts with many
	// thousands of variables.

	friend class Line; // For access to mBIV.
#ifdef CONFIG_DEBUGGER
	friend class Debugger;
#endif

	void UpdateBinaryInt64(__int64 aInt64, VarAttribType aAttrib = VAR_ATTRIB_HAS_VALID_INT64)
	// When caller doesn't include VAR_ATTRIB_CONTENTS_OUT_OF_DATE in aAttrib, CALLER MUST ENSURE THAT
	// mContents CONTAINS A PURE NUMBER; i.e. it mustn't contain something non-numeric at the end such as
	// 123abc (but trailing/leading whitespace is okay).  This is because users of the cached binary number
	// generally expect mContents to be an accurate reflection of that number.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);

		if (var.IsObject()) // L31: mObject will be overwritten below via the union, so release it now.
			var.ReleaseObject();

		var.mContentsInt64 = aInt64;
		var.mAttrib &= ~(VAR_ATTRIB_CACHE | VAR_ATTRIB_UNINITIALIZED); // But not VAR_ATTRIB_CONTENTS_OUT_OF_DATE because the caller specifies whether or not that gets added.
		var.mAttrib |= aAttrib; // Must be done prior to below. Indicate the type of binary number and whether VAR_ATTRIB_CONTENTS_OUT_OF_DATE is present.
		if (var.mAttrib & VAR_ATTRIB_CACHE_DISABLED) // Variables marked this way can't use either read or write caching.
		{
			var.UpdateContents(); // Update contents based on the new binary number just stored above. This call also removes the VAR_ATTRIB_CONTENTS_OUT_OF_DATE flag.
			var.mAttrib &= ~VAR_ATTRIB_CACHE; // Must be done after the above: Prevent the cached binary number from ever being used because this variable has been marked volatile (e.g. external changes to clipboard) and the cache can't be trusted.
		}
		else if (g_WriteCacheDisabledInt64 && (var.mAttrib & VAR_ATTRIB_HAS_VALID_INT64)
			|| g_WriteCacheDisabledDouble && (var.mAttrib & VAR_ATTRIB_HAS_VALID_DOUBLE))
		{
			if (var.mAttrib & VAR_ATTRIB_CONTENTS_OUT_OF_DATE) // For performance. See comments below.
				var.UpdateContents();
			// But don't remove VAR_ATTRIB_HAS_VALID_INT64/VAR_ATTRIB_HAS_VALID_DOUBLE because some of
			// our callers omit VAR_ATTRIB_CONTENTS_OUT_OF_DATE from aAttrib because they already KNOW
			// that var.mContents accurately represents the double or int64 in aInt64 (in such cases,
			// they also know that the precision of any floating point number in mContents matches the
			// precision/rounding that's in the double stored in aInt64).  In other words, unlike
			// VAR_ATTRIB_CACHE_DISABLED, only write-caching is disabled in the above cases (not read-caching).
			// This causes newly written numbers to be immediately written out to mContents so that the
			// SetFormat command works in realtime, for backward compatibility.  Also, even if the
			// new/incoming binary number matches the one already in the cache, MUST STILL write out
			// to mContents in case SetFormat is now different than it was before.
		}
	}

	void UpdateBinaryDouble(double aDouble, VarAttribType aAttrib = 0)
	// FOR WHAT GOES IN THIS SPOT, SEE IMPORTANT COMMENTS IN UpdateBinaryInt64().
	{
		// The type-casting below interprets the contents of aDouble as an __int64 without actually converting
		// from double to __int64.  Although the generated code isn't measurably smaller, hopefully the compiler
		// resolves it into something that performs better than a memcpy into a temporary variable.
		// Benchmarks show that the performance is at most a few percent worse than having code similar to
		// UpdateBinaryInt64() in here.
		UpdateBinaryInt64(*(__int64 *)&aDouble, aAttrib | VAR_ATTRIB_HAS_VALID_DOUBLE);
	}

	void UpdateContents() // Supports both VAR_NORMAL and VAR_CLIPBOARD.
	// Any caller who (prior to the call) stores a new cached binary number in the variable and also
	// sets VAR_ATTRIB_CONTENTS_OUT_OF_DATE must (after the call) remove VAR_ATTRIB_CACHE if the
	// variable has the VAR_ATTRIB_CACHE_DISABLED flag.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		if (var.mAttrib & VAR_ATTRIB_CONTENTS_OUT_OF_DATE)
		{
			// THE FOLLOWING ISN'T NECESSARY BECAUSE THE ASSIGN() CALLS BELOW DO IT:
			//var.mAttrib &= ~VAR_ATTRIB_CONTENTS_OUT_OF_DATE;
			TCHAR value_string[MAX_NUMBER_SIZE];
			if (var.mAttrib & VAR_ATTRIB_HAS_VALID_INT64)
			{
				var.Assign(ITOA64(var.mContentsInt64, value_string)); // Return value currently not checked for this or the below.
				var.mAttrib |= VAR_ATTRIB_HAS_VALID_INT64; // Re-enable the cache because Assign() disables it (since all other callers want that).
			}
			else if (var.mAttrib & VAR_ATTRIB_HAS_VALID_DOUBLE)
			{
				// "%0.6f"; %f can handle doubles in MSVC++:
				var.Assign(value_string, sntprintf(value_string, _countof(value_string), g->FormatFloat, var.mContentsDouble));
				// In this case, read-caching should be disabled for scripts that use "SetFormat Float" because
				// they might rely on SetFormat having rounded floats off to FAR fewer decimal places (or
				// even to integers via "SetFormat, Float, 0").  Such scripts can use read-caching only when
				// mContents has been used to update the cache, not vice versa.  This restriction doesn't seem
				// to be necessary for "SetFormat Integer" because there should be no loss of precision when
				// integers are stored as hex vs. decimal:
				if (!g_WriteCacheDisabledDouble) // See comment above for why this is checked for float but not integer.
					var.mAttrib |= VAR_ATTRIB_HAS_VALID_DOUBLE; // Re-enable the cache because Assign() disables it (since all other callers want that).
			}
			//else nothing to update, which shouldn't happen in this block unless there's a flaw or bug somewhere.
		}
	}

	VarSizeType _CharLength() { return mByteLength / sizeof(TCHAR); }
	VarSizeType _CharCapacity() { return mByteCapacity / sizeof(TCHAR); }
public:
	// Testing shows that due to data alignment, keeping mType adjacent to the other less-than-4-size member
	// above it reduces size of each object by 4 bytes.
	TCHAR *mName;    // The name of the var.

	// sEmptyString is a special *writable* memory area for empty variables (those with zero capacity).
	// Although making it writable does make buffer overflows difficult to detect and analyze (since they
	// tend to corrupt the program's static memory pool), the advantages in maintainability and robustness
	// seem to far outweigh that.  For example, it avoids having to constantly think about whether
	// *Contents()='\0' is safe. The sheer number of places that's avoided is a great relief, and it also
	// cuts down on code size due to not having to always check Capacity() and/or create more functions to
	// protect from writing to read-only strings, which would hurt performance.
	// The biggest offender of buffer overflow in sEmptyString is DllCall, which happens most frequently
	// when a script forgets to call VarSetCapacity before psssing a buffer to some function that writes a
	// string to it.  There is now some code there that tries to detect when that happens.
	static TCHAR sEmptyString[1]; // See above.

	VarSizeType Get(LPTSTR aBuf = NULL);
	ResultType AssignHWND(HWND aWnd);
	ResultType Assign(Var &aVar);
	ResultType Assign(ExprTokenType &aToken);
	ResultType AssignClipboardAll();
	ResultType AssignBinaryClip(Var &aSourceVar);
	// Assign(char *, ...) has been braek into four methods below.
	// This should prevent some mistakes, as characters and bytes are not interchangeable in the Unicode build.
	// Callers must make sure which one is the right method to call.
	ResultType AssignString(LPCTSTR aBuf = NULL, VarSizeType aLength = VARSIZE_MAX, bool aExactSize = false, bool aObeyMaxMem = true);
	inline ResultType Assign(LPCTSTR aBuf, VarSizeType aLength = VARSIZE_MAX, bool aExactSize = false, bool aObeyMaxMem = true)
	{
		ASSERT(aBuf); // aBuf shouldn't be NULL, use SetCapacity([length in bytes]) or AssignString(NULL, [length in characters]) instead.
		return AssignString(aBuf, aLength, aExactSize, aObeyMaxMem);
	}
	inline ResultType Assign()
	{
		return AssignString();
	}
	ResultType SetCapacity(VarSizeType aByteLength, bool aExactSize = false, bool aObeyMaxMem = true)
	{
#ifdef UNICODE
		return AssignString(NULL, (aByteLength >> 1) + (aByteLength & 1), aExactSize, aObeyMaxMem);
#else
		return AssignString(NULL, aByteLength, aExactSize, aObeyMaxMem);
#endif
	}

	ResultType AssignStringFromCodePage(LPCSTR aBuf, int aLength = -1, UINT aCodePage = CP_ACP);
	ResultType AssignStringFromUTF8(LPCSTR aBuf, int aLength = -1)
	{
		return AssignStringFromCodePage(aBuf, aLength, CP_UTF8);
	}
	ResultType AssignStringToCodePage(LPCWSTR aBuf, int aLength = -1, UINT aCodePage = CP_ACP, DWORD aFlags = WC_NO_BEST_FIT_CHARS, char aDefChar = '?');
	inline ResultType AssignStringW(LPCWSTR aBuf, int aLength = -1)
	{
		return UorA(AssignString,AssignStringToCodePage)(aBuf, aLength);
	}

	inline ResultType Assign(DWORD aValueToAssign) // For some reason, this function is actually faster when not __forceinline.
	{
		UpdateBinaryInt64(aValueToAssign, VAR_ATTRIB_CONTENTS_OUT_OF_DATE|VAR_ATTRIB_HAS_VALID_INT64);
		return OK;
	}

	inline ResultType Assign(int aValueToAssign) // For some reason, this function is actually faster when not __forceinline.
	{
		UpdateBinaryInt64(aValueToAssign, VAR_ATTRIB_CONTENTS_OUT_OF_DATE|VAR_ATTRIB_HAS_VALID_INT64);
		return OK;
	}

	inline ResultType Assign(__int64 aValueToAssign) // For some reason, this function is actually faster when not __forceinline.
	{
		UpdateBinaryInt64(aValueToAssign, VAR_ATTRIB_CONTENTS_OUT_OF_DATE|VAR_ATTRIB_HAS_VALID_INT64);
		return OK;
	}

	inline ResultType Assign(VarSizeType aValueToAssign) // For some reason, this function is actually faster when not __forceinline.
	{
		UpdateBinaryInt64(aValueToAssign, VAR_ATTRIB_CONTENTS_OUT_OF_DATE|VAR_ATTRIB_HAS_VALID_INT64);
		return OK;
	}

	inline ResultType Assign(double aValueToAssign)
	// It's best to call this method -- rather than manually converting to double -- so that the
	// digits/formatting/precision is consistent throughout the program.
	// Returns OK or FAIL.
	{
		UpdateBinaryDouble(aValueToAssign, VAR_ATTRIB_CONTENTS_OUT_OF_DATE); // When not passing VAR_ATTRIB_CONTENTS_OUT_OF_DATE, all callers of UpdateBinaryDouble() must ensure that mContents is a pure number (e.g. NOT 123abc).
		return OK;
	}

	ResultType AssignSkipAddRef(IObject *aValueToAssign)
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);

		var.Free(); // If var contains an object, this will Release() it.  It will also clear any string contents and free memory if appropriate.
		
		var.mObject = aValueToAssign;
		
		// Already done by Free() above:
		//mAttrib &= ~(VAR_ATTRIB_OFTEN_REMOVED | VAR_ATTRIB_UNINITIALIZED);

		// Mark this variable to indicate it contains an object.
		// Currently nothing should attempt to cache a number in a variable which contains an object, but it may become
		// possible if a "default property" mechanism is introduced for implicitly converting an object to a string/number.
		// There are at least two ways the caching mechanism could conflict with objects:
		//  1) Caching a number would overwrite mObject.
		//	2) Caching a number or flagging the variable as "non-numeric" would give incorrect results if the object's
		//	   default property can implicitly change (and this change cannot be detected in order to invalidate the cache).
		// Including VAR_ATTRIB_CACHE_DISABLED below should prevent caching from ever occurring for a variable containing an object.
		// Including VAR_ATTRIB_NOT_NUMERIC below allows IsNonBlankIntegerOrFloat to return early if it is passed an object.
		var.mAttrib |= VAR_ATTRIB_OBJECT | VAR_ATTRIB_CACHE_DISABLED | VAR_ATTRIB_NOT_NUMERIC;

		return OK;
	}

	inline ResultType Assign(IObject *aValueToAssign)
	{
		aValueToAssign->AddRef(); // Must be done before Release() in case the only other reference to this object is already in var.  Such a case seems too rare to be worth optimizing by returning early.
		return AssignSkipAddRef(aValueToAssign);
	}

	inline IObject *&Object()
	{
		return (mType == VAR_ALIAS) ? mAliasFor->mObject : mObject;
	}

	inline void ReleaseObject() // L31
	// Caller has ensured that IsObject() == true, not just HasObject().
	{
		// Remove the "this is an object" attribute and re-enable binary number caching.
		mAttrib &= ~(VAR_ATTRIB_OBJECT | VAR_ATTRIB_CACHE_DISABLED | VAR_ATTRIB_NOT_NUMERIC);
		// Release this variable's object.  MUST BE DONE AFTER THE ABOVE IN CASE IT TRIGGERS var.base.__Delete().
		mObject->Release();
	}

	void DisableCache()
	// Callers should be aware that the cache will be re-enabled (except for clipboard) whenever a the address
	// of a variable's contents changes, such as when it needs to be expanded to hold more text.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		if (var.mAttrib & VAR_ATTRIB_CACHE_DISABLED) // Already marked correctly (and whoever marked it would have already done the steps further below).
			return;
		var.UpdateContents(); // Update mContents & mLength. Must be done prior to below (it also removes the VAR_ATTRIB_CONTENTS_OUT_OF_DATE flag, if present).
		var.mAttrib &= ~VAR_ATTRIB_CACHE; // Remove all cached attributes.
		var.mAttrib |= VAR_ATTRIB_CACHE_DISABLED; // Indicate that in the future, mContents should be kept up-to-date.
	}

	SymbolType IsNonBlankIntegerOrFloat(BOOL aAllowImpure = false)
	// Supports VAR_NORMAL and VAR_CLIPBOARD.  It would need review if any other types need to be supported.
	// Caller must be aware that aAllowFloat==true, aAllowNegative==true, and aAllowAllWhitespace==false
	// are in effect for this function.
	// If caller passes true for aAllowImpure, no explicit handling seems necessary here because:
	// 1) If the text number in mContents is IMPURE, it wouldn't be in the cache in the first place (other
	//    logic ensures this) and thus aAllowImpure need only be delegated to and handled by IsPureNumeric().
	// 2) If the text number in mContents is PURE, the handling below is correct regardless of whether it's
	//    already in the cache.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		switch(var.mAttrib & VAR_ATTRIB_CACHE) // This switch() method should squeeze a little more performance out of it compared to doing "&" for every attribute.  Only works for attributes that are mutually-exclusive, which these are.
		{
		case VAR_ATTRIB_HAS_VALID_INT64: return PURE_INTEGER;
		case VAR_ATTRIB_HAS_VALID_DOUBLE: return PURE_FLOAT;
		case VAR_ATTRIB_NOT_NUMERIC: return PURE_NOT_NUMERIC;
		}
		// Since above didn't return, its numeric status isn't yet known, so determine it.  To conform to
		// historical behavior (backward compatibility), the following doesn't check MAX_INEGER_LENGTH.
		// So any string of digits that is too long to be a legitimate number is still treated as a number
		// anyway (overflow).  Most of our callers are expressions anyway, in which case any unquoted
		// series of digits is always a number, never a string.
		SymbolType is_pure_numeric = IsPureNumeric(var.Contents(), true, false, true, aAllowImpure); // Contents() vs. mContents to support VAR_CLIPBOARD lvalue in a pure expression such as "clipboard:=1,clipboard+=5"
		if (is_pure_numeric == PURE_NOT_NUMERIC && !(var.mAttrib & VAR_ATTRIB_CACHE_DISABLED))
			var.mAttrib |= VAR_ATTRIB_NOT_NUMERIC;
		//else it may be a pure number, which isn't currently tracked via mAttrib (until a cached number is
		// actually stored) because the callers of this function often track it and pass the info on
		// to ToInt64() or ToDouble().
		return is_pure_numeric;
	}

	__int64 ToInt64(BOOL aIsPureInteger)
	// Caller should pass FALSE for aIsPureInteger if this variable's mContents is either:
	// 1) Not a pure number as defined by IsPureNumeric(), namely that the number has a non-numeric part
	//    at the end like 123abc (though pure numbers may have leading and trailing whitespace).
	// 2) It isn't known whether it's a pure number.
	// 3) It's pure but it's the wrong type of number (e.g. it contains decimal point yet ToInt64() vs.
	//    ToDouble() was called).
	// The reason for the above is that IsNonBlankIntegerOrFloat() relies on the state of the cache to
	// accurately report what's in mContents.
	// This function supports VAR_NORMAL and VAR_CLIPBOARD. It would need review to support any other types.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		if (var.mAttrib & VAR_ATTRIB_HAS_VALID_INT64) // aIsPureInteger isn't checked here because although this caller might not know that it's pure, other logic ensures that the one who actually set it in the cache did know it was pure.
			return var.mContentsInt64;
		//else although the attribute VAR_ATTRIB_HAS_VALID_DOUBLE might be present, casting a double to an __int64
		// might produce a different result than ATOI64() in some cases.  So for backward compatibility and
		// due to rarity of such a circumstance, VAR_ATTRIB_HAS_VALID_DOUBLE isn't checked.
		__int64 int64 = ATOI64(var.Contents()); // Call Contents() vs. using mContents in case of VAR_CLIPBOARD or VAR_ATTRIB_HAS_VALID_DOUBLE, and also for maintainability.
		if (aIsPureInteger && !(var.mAttrib & VAR_ATTRIB_CACHE_DISABLED)) // This is checked to avoid the overhead of calling UpdateBinaryInt64() unconditionally because it may do a lot of things internally.
			var.UpdateBinaryInt64(int64); // Cache the binary number for future uses.
		return int64;
	}

	double ToDouble(BOOL aIsPureFloat)
	// FOR WHAT GOES IN THIS SPOT, SEE IMPORTANT COMMENTS IN ToInt64().
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		if (var.mAttrib & VAR_ATTRIB_HAS_VALID_DOUBLE)  // aIsPureFloat isn't checked here because although this caller might not know that it's pure, other logic ensures that the one who actually set it in the cache did know it was pure.
			return var.mContentsDouble;
		if (var.mAttrib & VAR_ATTRIB_HAS_VALID_INT64) // If there's already a binary integer stored, don't convert the cache type to "double" because that would cause IsNonBlankIntegerOrFloat() to wrongly return PURE_FLOAT. In addition, float is rarely used and often needed only temporarily, such as x:=VarInt+VarFloat
			return (double)var.mContentsInt64; // As expected, testing shows that casting an int64 to a double is at least 100 times faster than calling ATOF() on the text version of that integer.
		// Otherwise, neither type of binary number is cached yet.
		double d = ATOF(var.Contents()); // Call Contents() vs. using mContents in case of VAR_CLIPBOARD, and also for maintainability and consistency with ToInt64().
		if (aIsPureFloat && !(var.mAttrib & VAR_ATTRIB_CACHE_DISABLED)) // This is checked to avoid the overhead of calling UpdateBinaryInt64() unconditionally because it may do a lot of things internally.
			var.UpdateBinaryDouble(d); // Cache the binary number for future uses.
		return d;
	}

	ResultType TokenToDoubleOrInt64(ExprTokenType &aToken)
	// aToken.var is the same as the "this" var. Converts var into a number and stores it numerically in aToken.
	// Supports VAR_NORMAL and VAR_CLIPBOARD.  It would need review if any other types need to be supported.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		switch (aToken.symbol = var.IsNonBlankIntegerOrFloat())
		{
		case PURE_INTEGER:
			aToken.value_int64 = var.ToInt64(TRUE);
			break;
		case PURE_FLOAT:
			aToken.value_double = var.ToDouble(TRUE);
			break;
		default: // Not a pure number.
			aToken.marker = _T(""); // For completeness.  Some callers such as BIF_Abs() rely on this being done.
			return FAIL;
		}
		return OK; // Since above didn't return, indicate success.
	}

	void TokenToContents(ExprTokenType &aToken) // L31: Mostly for object support.
	// See TokenToDoubleOrInt64 for comments.
	{
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		// L33: For greater compatibility with the official release and L revisions prior to L31,
		// this section was changed to avoid converting numeric strings to SYM_INTEGER/SYM_FLOAT.
		switch(var.mAttrib & VAR_ATTRIB_CACHE)
		{
		case VAR_ATTRIB_HAS_VALID_INT64:
			aToken.symbol = SYM_INTEGER;
			aToken.value_int64 = var.mContentsInt64;
			return;
		case VAR_ATTRIB_HAS_VALID_DOUBLE:
			aToken.symbol = SYM_FLOAT;
			aToken.value_double = var.mContentsDouble;
			return;
		default:
			if (var.IsObject())
			{
				aToken.symbol = SYM_OBJECT;
				aToken.object = var.mObject;
				aToken.object->AddRef();
				return;
			}
			//else contains a regular string.
			aToken.symbol = SYM_STRING;
			aToken.marker = var.Contents();
		}
	}

	// Not an enum so that it can be global more easily:
	#define VAR_ALWAYS_FREE                    0 // This item and the next must be first and numerically adjacent to
	#define VAR_ALWAYS_FREE_BUT_EXCLUDE_STATIC 1 // each other so that VAR_ALWAYS_FREE_LAST covers only them.
	#define VAR_ALWAYS_FREE_LAST               2 // Never actually passed as a parameter, just a placeholder (see above comment).
	#define VAR_NEVER_FREE                     3
	#define VAR_FREE_IF_LARGE                  4
	void Free(int aWhenToFree = VAR_ALWAYS_FREE, bool aExcludeAliasesAndRequireInit = false);
	ResultType AppendIfRoom(LPTSTR aStr, VarSizeType aLength);
	void AcceptNewMem(LPTSTR aNewMem, VarSizeType aLength);
	void SetLengthFromContents();

	static ResultType BackupFunctionVars(Func &aFunc, VarBkp *&aVarBackup, int &aVarBackupCount);
	void Backup(VarBkp &aVarBkp);
	static void FreeAndRestoreFunctionVars(Func &aFunc, VarBkp *&aVarBackup, int &aVarBackupCount);

	#define DISPLAY_NO_ERROR   0  // Must be zero.
	#define DISPLAY_VAR_ERROR  1
	#define DISPLAY_FUNC_ERROR 2
	static ResultType ValidateName(LPCTSTR aName, bool aIsRuntime = false, int aDisplayError = DISPLAY_VAR_ERROR);

	LPTSTR ObjectToText(LPTSTR aBuf, int aBufSize);
	LPTSTR ToText(LPTSTR aBuf, int aBufSize, bool aAppendNewline)
	// Caller must ensure that Type() == VAR_NORMAL.
	// aBufSize is an int so that any negative values passed in from caller are not lost.
	// Caller has ensured that aBuf isn't NULL.
	// Translates this var into its text equivalent, putting the result into aBuf andp
	// returning the position in aBuf of its new string terminator.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		// v1.0.44.14: Changed it so that ByRef/Aliases report their own name rather than the target's/caller's
		// (it seems more useful and intuitive).
		var.UpdateContents(); // Update mContents and mLength for use below.
		LPTSTR aBuf_orig = aBuf;
		if (var.IsObject())
			aBuf = ObjectToText(aBuf, aBufSize);
		else
			aBuf += sntprintf(aBuf, BUF_SPACE_REMAINING, _T("%s[%Iu of %Iu]: %-1.60s%s"), mName // mName not var.mName (see comment above).
				, var._CharLength(), var._CharCapacity() ? (var._CharCapacity() - 1) : 0  // Use -1 since it makes more sense to exclude the terminator.
				, var.mCharContents, var._CharLength() > 60 ? _T("...") : _T(""));
		if (aAppendNewline && BUF_SPACE_REMAINING >= 2)
		{
			*aBuf++ = '\r';
			*aBuf++ = '\n';
			*aBuf = '\0';
		}
		return aBuf;
	}

	__forceinline VarTypeType Type()
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		return (mType == VAR_ALIAS) ? mAliasFor->mType : mType;
	}

	__forceinline bool IsStatic()
	{
		return (mIsLocal & VAR_LOCAL_STATIC);
	}

	__forceinline bool IsLocal()
	{
		// Since callers want to know whether this variable is local, even if it's a local alias for a
		// global, don't use the method below:
		//    return (mType == VAR_ALIAS) ? mAliasFor->mIsLocal : mIsLocal;
		return mIsLocal;
	}

	__forceinline bool IsNonStaticLocal()
	{
		// Since callers want to know whether this variable is local, even if it's a local alias for a
		// global, don't resolve VAR_ALIAS.
		// Even a ByRef local is considered local here because callers are interested in whether this
		// variable can vary from call to call to the same function (and a ByRef can vary in what it
		// points to).  Variables that vary can thus be altered by the backup/restore process.
		return mIsLocal && !(mIsLocal & VAR_LOCAL_STATIC);
	}

	//__forceinline bool IsFuncParam()
	//{
	//	return (mIsLocal & VAR_LOCAL_FUNCPARAM);
	//}

	__forceinline bool IsDeclaredLocal()
	// Returns true if this is a declared local var, such as "local var", "static var" or a func param.
	{
		return (mIsLocal & VAR_LOCAL_DECLARED);
	}

	__forceinline void MarkLocalDeclared()
	{
		if (mIsLocal) // Test first, to ensure this method can't be erroneously used to mark a global.
			mIsLocal |= VAR_LOCAL_DECLARED;
	}

	__forceinline bool IsBinaryClip()
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		return (mType == VAR_ALIAS ? mAliasFor->mAttrib : mAttrib) & VAR_ATTRIB_BINARY_CLIP;
	}

	__forceinline bool IsObject() // L31: Indicates this var contains an object reference which must be released if the var is emptied.
	{
		return (mAttrib & VAR_ATTRIB_OBJECT);
	}

	__forceinline bool HasObject() // L31: Indicates this var's effective value is an object reference.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		return (var.mAttrib & VAR_ATTRIB_OBJECT);
	}

	VarSizeType ByteCapacity() // __forceinline() on Capacity, Length, and/or Contents bloats the code and reduces performance.
	// Capacity includes the zero terminator (though if capacity is zero, there will also be a zero terminator in mContents due to it being "").
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		// Fix for v1.0.37: Callers want the clipboard's capacity returned, if it has a capacity.  This is
		// because Capacity() is defined as being the size available in Contents(), which for the clipboard
		// would be a pointer to the clipboard-buffer-to-be-written (or zero if none).
		return var.mType == VAR_CLIPBOARD ? g_clip.mCapacity : var.mByteCapacity;
	}

	VarSizeType CharCapacity()
	{
		return ByteCapacity() / sizeof(TCHAR); 
	}

	UNICODE_CHECK VarSizeType Capacity()
	{
		return CharCapacity();
	}

	BOOL HasContents()
	// A fast alternative to Length() that avoids updating mContents.
	// Caller must ensure that Type() is VAR_NORMAL.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		return (var.mAttrib & (VAR_ATTRIB_CONTENTS_OUT_OF_DATE | VAR_ATTRIB_OBJECT)) ? TRUE : !!var.mByteLength; // i.e. the only time var.mLength isn't a valid indicator of an empty variable is when VAR_ATTRIB_CONTENTS_OUT_OF_DATE, in which case the variable is non-empty because there is a binary number in it.
	}

	BOOL HasUnflushedBinaryNumber()
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		return var.mAttrib & VAR_ATTRIB_CONTENTS_OUT_OF_DATE; // VAR_ATTRIB_CONTENTS_OUT_OF_DATE implies that either VAR_ATTRIB_HAS_VALID_INT64 or VAR_ATTRIB_HAS_VALID_DOUBLE is also present.
	}

	VarSizeType &ByteLength() // __forceinline() on Capacity, Length, and/or Contents bloats the code and reduces performance.
	// This should not be called to discover a non-NORMAL var's length (nor that of an environment variable)
	// because their lengths aren't knowable without calling Get().
	// Returns a reference so that caller can use this function as an lvalue.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		if (var.mType == VAR_NORMAL)
		{
			if (var.mAttrib & VAR_ATTRIB_CONTENTS_OUT_OF_DATE)
				var.UpdateContents();  // Update mContents (and indirectly, mLength).
			return var.mByteLength;
		}
		// Since the length of the clipboard isn't normally tracked, we just return a
		// temporary storage area for the caller to use.  Note: This approach is probably
		// not thread-safe, but currently there's only one thread so it's not an issue.
		// For reserved vars do the same thing as above, but this function should never
		// be called for them:
		static VarSizeType length; // Must be static so that caller can use its contents. See above.
		return length;
	}

	VarSizeType SetCharLength(VarSizeType len)
	{
		 ByteLength() = len * sizeof(TCHAR);
		 return len;
	}

	VarSizeType CharLength()
	{
		return ByteLength() / sizeof(TCHAR);
	}

	UNICODE_CHECK VarSizeType Length()
	{
		return CharLength();
	}

	VarSizeType LengthIgnoreBinaryClip()
	// Returns 0 for types other than VAR_NORMAL and VAR_CLIPBOARD.
	// IMPORTANT: Environment variables aren't supported here, so caller must either want such
	// variables treated as blank, or have already checked that they're not environment variables.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		// Return the apparent length of the string (i.e. the position of its first binary zero).
		return (var.mType == VAR_NORMAL && !(var.mAttrib & VAR_ATTRIB_BINARY_CLIP))
			? var.Length() // Use Length() vs. mLength so that the length is updated if necessary.
			: _tcslen(var.Contents()); // Use Contents() vs. mContents to support VAR_CLIPBOARD.
	}

	//BYTE *ByteContents(BOOL aAllowUpdate = TRUE)
	//{
	//	return (BYTE *) CharContents(aAllowUpdate);
	//}

	TCHAR *Contents(BOOL aAllowUpdate = TRUE, BOOL aNoWarnUninitializedVar = FALSE)
	// Callers should almost always pass TRUE for aAllowUpdate because any caller who wants to READ from
	// mContents would almost always want it up-to-date.  Any caller who wants to WRITE to mContents would
	// would almost always have called Assign(NULL, ...) prior to calling Contents(), which would have
	// cleared the VAR_ATTRIB_CONTENTS_OUT_OF_DATE flag.
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		if ((var.mAttrib & VAR_ATTRIB_CONTENTS_OUT_OF_DATE) && aAllowUpdate) // VAR_ATTRIB_CONTENTS_OUT_OF_DATE is checked here and in the function below, for performance.
			var.UpdateContents(); // This also clears the VAR_ATTRIB_CONTENTS_OUT_OF_DATE flag.
		if (var.mType == VAR_NORMAL)
		{
			// If aAllowUpdate is FALSE, the caller just wants to compare mCharContents to another address.
			// Otherwise, the caller is probably going to use mCharContents and might want a warning:
			if (aAllowUpdate && !aNoWarnUninitializedVar)
				var.MaybeWarnUninitialized();
			return var.mCharContents;
		}
		if (var.mType == VAR_CLIPBOARD)
			// The returned value will be a writable mem area if clipboard is open for write.
			// Otherwise, the clipboard will be opened physically, if it isn't already, and
			// a pointer to its contents returned to the caller:
			return g_clip.Contents();
		return sEmptyString; // For reserved vars (but this method should probably never be called for them).
	}

	void ConvertToStatic()
	// Caller must ensure that it's a local variable.
	{
		mIsLocal |= VAR_LOCAL_STATIC;
	}

	void ConvertToNonStatic()
	{
		mIsLocal &= ~VAR_LOCAL_STATIC;
	}

	__forceinline void ConvertToNonAliasIfNecessary() // __forceinline because it's currently only called from one place.
	// When this function actually converts an alias into a normal variable, the variable's old
	// attributes (especially mContents and mCapacity) become dominant again.  This prevents a memory
	// leak in a case where a UDF is defined to provide a default value for a ByRef parameter, and is
	// called both with and without that parameter.
	{
		mAliasFor = NULL; // This also sets its counterpart in the union (mLength) to zero, which is appropriate because mContents should have been set to blank by a previous call to Free().
		mType = VAR_NORMAL; // It might already be this type, so this is just in case it's VAR_ALIAS.
	}

	__forceinline Var *ResolveAlias()
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		return (mType == VAR_ALIAS) ? mAliasFor : this; // Return target if it's an alias, or itself if not.
	}

	__forceinline void UpdateAlias(Var *aTargetVar) // __forceinline because it's currently only called from one place.
	// Caller must ensure that aTargetVar isn't NULL.
	// When this function actually converts a normal variable into an alias , the variable's old
	// attributes (especially mContents and mCapacity) are hidden/suppressed by virtue of all Var:: methods
	// obeying VAR_ALIAS and resolving it to be the target variable.  This prevents a memory
	// leak in a case where a UDF is defined to provide a default value for a ByRef parameter, and is
	// called both with and without that parameter.
	{
		// BELOW IS THE MEANS BY WHICH ALIASES AREN'T ALLOWED TO POINT TO OTHER ALIASES, ONLY DIRECTLY TO
		// THE TARGET VAR.
		// Resolve aliases-to-aliases for performance and to increase the expectation of
		// reliability since a chain of aliases-to-aliases might break if an alias in
		// the middle is ever allowed to revert to a non-alias (or gets deleted).
		// A caller may ask to create an alias to an alias when a function calls another
		// function and passes to it one of its own byref-params.
		while (aTargetVar->mType == VAR_ALIAS)
			aTargetVar = aTargetVar->mAliasFor;

		// The following is done only after the above in case there's ever a way for the above
		// to circle back to become this variable.
		// Prevent potential infinite loops in other methods by refusing to change an alias
		// to point to itself.
		if (aTargetVar == this)
			return;

		mAliasFor = aTargetVar; // Should always be non-NULL due to various checks elsewhere.
		mType = VAR_ALIAS; // It might already be this type, so this is just in case it's VAR_NORMAL.
	}

	ResultType Close(bool aIsBinaryClip = false)
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		if (var.mType == VAR_CLIPBOARD && g_clip.IsReadyForWrite())
			return g_clip.Commit(); // Writes the new clipboard contents to the clipboard and closes it.
		// The binary-clip attribute is also reset here for cases where a caller uses a variable without
		// having called Assign() to resize it first, which can happen if the variable's capacity is already
		// sufficient to hold the desired contents.  VAR_ATTRIB_CONTENTS_OUT_OF_DATE is also removed below
		// for maintainability; it shouldn't be necessary because any caller of Close() should have previously
		// called something that updates the flags, such as Contents().
		var.mAttrib &= ~VAR_ATTRIB_OFTEN_REMOVED;
		if (aIsBinaryClip) // If true, caller should ensure that var.mType isn't VAR_CLIPBOARD because it doesn't seem possible/valid for the clipboard to contain a binary image of the clipboard.
			var.mAttrib |= VAR_ATTRIB_BINARY_CLIP;
		//else (already done above)
		//	var.mAttrib &= ~VAR_ATTRIB_BINARY_CLIP;
		return OK; // In all other cases.
	}

	// Constructor:
	Var(LPTSTR aVarName, void *aType, UCHAR aIsLocal)
		// The caller must ensure that aVarName is non-null.
		: mCharContents(sEmptyString) // Invariant: Anyone setting mCapacity to 0 must also set mContents to the empty string.
		// Doesn't need initialization: , mContentsInt64(NULL)
		, mByteLength(0) // This also initializes mAliasFor within the same union.
		, mHowAllocated(ALLOC_NONE)
		, mAttrib(VAR_ATTRIB_UNINITIALIZED) // Seems best not to init empty vars to VAR_ATTRIB_NOT_NUMERIC because it would reduce maintainability, plus finding out whether an empty var is numeric via IsPureNumeric() is a very fast operation.
		, mIsLocal(aIsLocal)
		, mName(aVarName) // Caller gave us a pointer to dynamic memory for this (or static in the case of ResolveVarOfArg()).
	{
		if (aType > (void *)VAR_LAST_TYPE) // Relies on the fact that numbers less than VAR_LAST_TYPE can never realistically match the address of any function.
		{
			mType = VAR_BUILTIN;
			mBIV = (BuiltInVarType)aType; // This also initializes mCapacity within the same union.
			mAttrib = 0; // Built-in vars are considered initialized, by definition.
		}
		else
		{
			mType = (VarTypeType)aType;
			mByteCapacity = 0; // This also initializes mBIV within the same union.
			if (mType != VAR_NORMAL)
				mAttrib = 0; // Any vars that aren't VAR_NORMAL are considered initialized, by definition.
		}
	}

	void *operator new(size_t aBytes) {return SimpleHeap::Malloc(aBytes);}
	void *operator new[](size_t aBytes) {return SimpleHeap::Malloc(aBytes);}
	void operator delete(void *aPtr) {}
	void operator delete[](void *aPtr) {}


	__forceinline bool IsUninitializedNormalVar()
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		return (var.mAttrib & VAR_ATTRIB_UNINITIALIZED);
	}

	__forceinline void MarkInitialized()
	{
		// Relies on the fact that aliases can't point to other aliases (enforced by UpdateAlias()).
		Var &var = *(mType == VAR_ALIAS ? mAliasFor : this);
		mAttrib &= ~VAR_ATTRIB_UNINITIALIZED;
	}

	__forceinline void MaybeWarnUninitialized();

)"