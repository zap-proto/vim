" Vim syntax file
" Language: zap
" Maintainer: Andreas Misje

if exists("b:current_syntax")
  finish
endif

syn case    match

syn keyword zapTodo         contained TODO FIXME XXX
syn cluster zapCommentGroup contains=zapTodo

" Keywords
syn keyword zapDeclaration  struct union enum interface const annotation
syn keyword zapKeyword      using extends
syn match   zapArrow        display "->"

" Imports
syn region  zapImport       start=/\$?import\s*"/ skip=/\\"/ end=/"/

" Types
syn cluster zapTypeGroup    contains=zapTypeBrand,zapBuiltinType,zapImport
syn keyword zapBuiltinType  contained Void Bool Text Data List union group
syn keyword zapBuiltinType  contained Int8 Int16 Int32 Int64
syn keyword zapBuiltinType  contained UInt8 UInt16 UInt32 UInt64
syn keyword zapBuiltinType  contained Float32 Float64
" FIXME: Incorrectly colours multi-line contents in parentheses:
syn region  zapType         start=/:\s*\zs/ end=/[^\sa-zA-Z0-9_\.]/ contains=@zapTypeGroup
syn region  zapTypeBrand    transparent contained start=/(/ end=/)/

" Literals
syn region  zapString       start=/"/ skip=/\\"/ end=/"/
syn match   zapNumbers      display transparent /\<\d\|\.\d/ contains=zapNumber,zapFloat
syn match   zapNumber       display contained /\d\+\>/
syn match   zapNumber       display contained /0x\x\+\>/
syn match   zapFloat        display contained /\d\+\.\d*\([eE][-+]\=\d\+\)\=/
syn match   zapFloat        display contained /\.\d\+\([eE][-+]\=\d\+\)\=\>/
syn match   zapFloat        display contained /\d\+[eE][-+]\=\d\+\>/
syn keyword zapBoolean      true false
syn keyword zapFloat        inf

" Comments
syn match   zapComment      "#.*$" contains=@Spell,@zapCommentGroup

" Ordinals
syn match   zapOrdinal      display "@[a-fA-F0-9]\+"

" File IDs
syn match   zapFileId       display "@0x[a-fA-F0-9]\+"

" Annotations
syn region  zapAnnotation   start=/\$/ end=/[;()\n]/re=s-1,he=s-1 oneline contains=zapImport

" Braces
syn region  zapFold         matchgroup=zapBraces start="{" end="}" transparent fold

" Highlighting
hi link zapComment          Comment
hi link zapDeclaration      Structure
hi link zapKeyword          Keyword
hi link zapImport           Include
hi link zapString           String
hi link zapNumber           Number
hi link zapFloat            Float
hi link zapBoolean          Boolean
hi link zapType             Type
hi link zapBuiltinType      Type
hi link zapOrdinal          Identifier
hi link zapFileId           Identifier
hi link zapAnnotation       Statement
hi link zapTodo             Todo
hi link zapArrow            Operator

let b:current_syntax = "zap"
