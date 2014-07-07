" Vim syntax file
" Language:	Lua 4.0 (let lua_4=1) and Lua 5.0 (default)
" Author:	Carlos Augusto Teixeira Mendes <cmendes@inf.puc-rio.br>
" Last Change:	12 January 2003 by Marcus Aurelius Farias <marcuscf@vant.com.br>
" 		Support for Lua 5.0
"
" Still has some syncing problems... -- What problems?

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match

"Comments
syn keyword luaTodo		contained TODO FIXME XXX
syn match   luaComment		"--.*$" contains=luaTodo
if !exists("lua_4")
  syn region  luaComment	matchgroup=luaComment start="--\[\[" end="\]\]" contains=luaTodo,luaInnerComment
  syn region  luaInnerComment	contained transparent start="\[\[" end="\]\]"
end

" catch errors caused by wrong parenthesis and wrong curly brackets or
" keywords placed outside their respective blocks

syn region luaParen		transparent start='(' end=')' contains=ALLBUT,luaError,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd,luaCondStart,luaBlock,luaRepeatBlock,luaRepeat,luaStatement
syn match   luaError		")"
syn match   luaError		"}"
syn match   luaError		"\<\(end\|else\|elseif\|then\|until\|in\)\>"


" Function declaration
syn region  luaFunctionBlock    transparent matchgroup=luaFunction start="\<function\>" end="\<end\>" contains=ALLBUT,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd,luaRepeat

"if then else elseif end
syn keyword luaCond		contained else

" then ... end
syn region  luaCondEnd		contained transparent matchgroup=luaCond start="\<then\>" end="\<end\>" contains=ALLBUT,luaTodo,luaSpecial,luaRepeat

" elseif ... then
syn region  luaCondElseif	contained transparent matchgroup=luaCond start="\<elseif\>" end="\<then\>" contains=ALLBUT,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd,luaRepeat

" if ... then
syn region  luaCondStart	transparent matchgroup=luaCond start="\<if\>" end="\<then\>"me=e-4 contains=ALLBUT,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd,luaRepeat nextgroup=luaCondEnd skipwhite skipempty

" do ... end
syn region  luaBlock		transparent matchgroup=luaStatement start="\<do\>" end="\<end\>" contains=ALLBUT,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd,luaRepeat

" repeat ... until
syn region  luaRepeatBlock	transparent matchgroup=luaRepeat start="\<repeat\>" end="\<until\>" contains=ALLBUT,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd,luaRepeat

" while ... do
syn region  luaRepeatBlock	transparent matchgroup=luaRepeat start="\<while\>" end="\<do\>"me=e-2 contains=ALLBUT,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd,luaRepeat nextgroup=luaBlock skipwhite skipempty

" for ... do and for ... in ... do
syn region luaRepeatBlock	transparent matchgroup=luaRepeat start="\<for\>" end="\<do\>"me=e-2 contains=ALLBUT,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd nextgroup=luaBlock skipwhite skipempty

" Following 'else' example. Maybe a
" better name than luaRepeat? This is another item to those
" contains=ALLBUT,... because only the 'for' luaRepeatBlock contains it.
syn keyword luaRepeat		contained in

" other keywords
syn keyword luaStatement	return local break
syn keyword luaOperator		and or not
syn keyword luaConstant		nil
if !exists("lua_4")
  syn keyword luaConstant	true false
end

" Pre processor doesn't exist since Lua 4.0
" syn match   luaPreProc          "^\s*$\(debug\|nodebug\|if\|ifnot\|end\|else\|endinput\)\>"

" Strings
syn match   luaSpecial		contained "\\[ntr]"
syn region  luaString		start=+'+  end=+'+ skip=+\\\\\|\\'+ contains=luaSpecial
syn region  luaString		start=+"+  end=+"+ skip=+\\\\\|\\"+ contains=luaSpecial
" Nested strings
syn region  luaString2		matchgroup=luaString start=+\[\[+ end=+\]\]+ contains=luaString2

" integer number
syn match luaNumber		"\<[0-9]\+\>"
" floating point number, with dot, optional exponent
syn match luaFloat		"\<[0-9]\+\.[0-9]*\(e[-+]\=[0-9]\+\)\=\>"
" floating point number, starting with a dot, optional exponent
syn match luaFloat		"\.[0-9]\+\(e[-+]\=[0-9]\+\)\=\>"
" floating point number, without dot, with exponent
syn match luaFloat		"\<[0-9]\+e[-+]\=[0-9]\+\>"

" tables
syn region  luaTableBlock       transparent matchgroup=luaTable start="{" end="}" contains=ALLBUT,luaTodo,luaSpecial,luaCond,luaCondElseif,luaCondEnd,luaCondStart,luaBlock,luaRepeatBlock,luaRepeat,luaStatement

syn keyword luaFunc	assert collectgarbage dofile error next print rawget rawset tonumber tostring type

if exists("lua_4")
  " internal functions
  syn keyword luaFunc	_ALERT _ERRORMESSAGE
  syn keyword luaFunc	call copytagmethods dostring 
  syn keyword luaFunc	foreach foreachi getglobal getn 
  syn keyword luaFunc	gettagmethod globals newtag
  syn keyword luaFunc	setglobal settag settagmethod sort
  syn keyword luaFunc	tag tinsert tremove
  " standard libraries
  syn keyword luaFunc	openfile closefile flush seek
  syn keyword luaFunc	setlocale execute remove rename tmpname
  syn keyword luaFunc	getenv date clock exit
  syn keyword luaFunc	readfrom writeto appendto read write
  syn keyword luaFunc	abs sin cos tan asin
  syn keyword luaFunc	acos atan atan2 ceil floor
  syn keyword luaFunc	mod frexp ldexp sqrt min max log
  syn keyword luaFunc	log10 exp deg rad random
  syn keyword luaFunc	randomseed strlen strsub strlower strupper
  syn keyword luaFunc	strchar strrep ascii strbyte format
  syn keyword luaFunc	strfind gsub
  " Reflexive debug interface
  syn keyword luaFunc	getinfo getlocal setlocal setcallhook setlinehook
else
  syn keyword luaFunc	getglobals getmetatable gcinfo
  syn keyword luaFunc	ipairs loadfile loadstring pairs pcall
  syn keyword luaFunc	require setglobals setmetatable unpack
  syn keyword luaFunc	LUA_PATH _LOADED _VERSION
" Not sure if all these functions need to be highlighted... I guess it's
" better to highlight only base functions (above), because file-handle methods
" won't be highlited anyway.
  syn match   luaFunc	/string\.byte/
  syn match   luaFunc	/string\.char/
  syn match   luaFunc	/string\.find/
  syn match   luaFunc	/string\.len/
  syn match   luaFunc	/string\.lower/
  syn match   luaFunc	/string\.rep/
  syn match   luaFunc	/string\.sub/
  syn match   luaFunc	/string\.upper/
  syn match   luaFunc	/string\.format/
  syn match   luaFunc	/string\.gfind/
  syn match   luaFunc	/string\.gsub/
  syn match   luaFunc	/table\.concat/
  syn match   luaFunc	/table\.foreach/
  syn match   luaFunc	/table\.foreachi/
  syn match   luaFunc	/table\.getn/
  syn match   luaFunc	/table\.sort/
  syn match   luaFunc	/table\.insert/
  syn match   luaFunc	/table\.remove/
  syn match   luaFunc	/table\.setn/
  syn match   luaFunc	/math\.abs/
  syn match   luaFunc	/math\.acos/
  syn match   luaFunc	/math\.asin/
  syn match   luaFunc	/math\.atan/
  syn match   luaFunc	/math\.atan2/
  syn match   luaFunc	/math\.ceil/
  syn match   luaFunc	/math\.cos/
  syn match   luaFunc	/math\.deg/
  syn match   luaFunc	/math\.exp/
  syn match   luaFunc	/math\.floor/
  syn match   luaFunc	/math\.log/
  syn match   luaFunc	/math\.log10/
  syn match   luaFunc	/math\.max/
  syn match   luaFunc	/math\.min/
  syn match   luaFunc	/math\.mod/
  syn match   luaFunc	/math\.rad/
  syn match   luaFunc	/math\.sin/
  syn match   luaFunc	/math\.sqrt/
  syn match   luaFunc	/math\.tan/
  syn match   luaFunc	/math\.frexp/
  syn match   luaFunc	/math\.ldexp/
  syn match   luaFunc	/math\.random/
  syn match   luaFunc	/math\.randomseed/
  syn match   luaFunc	/io\.close/
  syn match   luaFunc	/io\.flush/
  syn match   luaFunc	/io\.input/
  syn match   luaFunc	/io\.lines/
  syn match   luaFunc	/io\.open/
  syn match   luaFunc	/io\.output/
  syn match   luaFunc	/io\.read/
  syn match   luaFunc	/io\.stderr/
  syn match   luaFunc	/io\.stdin/
  syn match   luaFunc	/io\.stdout/
  syn match   luaFunc	/io\.tmpfile/
  syn match   luaFunc	/io\.write/
  syn match   luaFunc	/os\.clock/
  syn match   luaFunc	/os\.date/
  syn match   luaFunc	/os\.difftime/
  syn match   luaFunc	/os\.execute/
  syn match   luaFunc	/os\.exit/
  syn match   luaFunc	/os\.getenv/
  syn match   luaFunc	/os\.remove/
  syn match   luaFunc	/os\.rename/
  syn match   luaFunc	/os\.setlocale/
  syn match   luaFunc	/os\.time/
  syn match   luaFunc	/os\.tmpname/
  syn match   luaFunc	/debug\.getinfo/
  syn match   luaFunc	/debug\.getlocal/
  syn match   luaFunc	/debug\.setlocal/
  syn match   luaFunc	/debug\.sethook/
  syn match   luaFunc	/debug\.gethook/
end

"syncing method
syn sync minlines=100

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lua_syntax_inits")
  if version < 508
    let did_lua_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink luaStatement		Statement
  HiLink luaRepeat		Repeat
  HiLink luaString		String
  HiLink luaString2		String
  HiLink luaNumber		Number
  HiLink luaFloat		Float
  HiLink luaOperator		Operator
  HiLink luaConstant		Constant
  HiLink luaCond	        Conditional
  HiLink luaFunction		Function
  HiLink luaComment		Comment
  HiLink luaTodo		Todo
  HiLink luaTable		Structure
  HiLink luaError		Error
  HiLink luaSpecial		SpecialChar
  " HiLink luaPreProc		PreProc
  HiLink luaFunc		Identifier

  delcommand HiLink
endif

let b:current_syntax = "lua"

" vim: ts=8
