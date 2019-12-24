" Vim color scheme
"
" Name:       monokrom.vim
" Maintainer: Alexander Heldt <me@alexanderheldt.se>
" License:    MIT

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "monokrom"

let s:palette = g:monokrom#palette

let s:black         = g:monokrom#palette.grey11
let s:bg            = g:monokrom#palette.grey15
let s:bg_light      = g:monokrom#palette.grey19
let s:bg_lighter    = g:monokrom#palette.grey23
let s:nothing       = g:monokrom#palette.grey27
let s:fg_darker     = g:monokrom#palette.grey39
let s:fg_dark       = g:monokrom#palette.grey46
let s:fg            = g:monokrom#palette.grey78

let s:white         = g:monokrom#palette.white
let s:blue          = g:monokrom#palette.blue
let s:green         = g:monokrom#palette.green
let s:red           = g:monokrom#palette.red
let s:orange        = g:monokrom#palette.orange

let s:splash        = g:monokrom#palette.yellow

let s:bold      = 'bold'
let s:underline = 'underline'
let s:none      = 'NONE'

" Used to set fg/bg to none
let s:none_list = [s:none, s:none]

function! s:hi(...)
    let group = a:1
    let fg    = get(a:, 2, s:fg)
    let bg    = get(a:, 3, s:bg)
    let attr  = get(a:, 4, s:none)

    let cmd = ['hi', group]

    call add(cmd, 'ctermfg='.fg[0])
    call add(cmd, 'guifg='.fg[1])

    call add(cmd, 'ctermbg='.bg[0])
    call add(cmd, 'guibg='.bg[1])

    call add(cmd, 'cterm='.attr)
    call add(cmd, 'gui='.attr)

    exec join(cmd, ' ')
endfunction

" UI {{{
set background=dark

" Column length lines
call s:hi('ColorColumn', s:none_list, s:black, s:none)

call s:hi('Conceal', s:fg_darker, s:bg, s:none)

" Cursor
call s:hi('Cursor', s:fg, s:splash, s:none)
call s:hi('CursorColumn', s:none_list, s:bg_light, s:none)
call s:hi('CursorLine', s:none_list, s:bg_light, s:none)

call s:hi('Directory', s:splash, s:none_list, s:none)

" Tildes in the end of the buffer after the file end
call s:hi('EndOfBuffer', s:nothing, s:bg, s:none)

" Messages
call s:hi('Error', s:red, s:none_list, s:none)
call s:hi('ErrorMsg', s:red, s:none_list, s:none)
call s:hi('Warning', s:orange, s:none_list, s:none)
call s:hi('WarningMsg', s:orange, s:none_list, s:none)
call s:hi('ModeMsg', s:fg_dark, s:none_list, s:none)
call s:hi('MoreMsg', s:fg_dark, s:none_list, s:none)

" The vertical split between buffers
call s:hi('VertSplit', s:bg_light, s:bg_light, s:none)

" Folding
call s:hi('Folded', s:fg_dark, s:black, s:none)
call s:hi('FoldColumn', s:fg_darker, s:none_list, s:none)
call s:hi('SignColumn', s:fg_dark, s:none_list, s:none)

" Search
call s:hi('IncSearch', s:bg, s:splash, s:none)
call s:hi('Search', s:bg, s:splash, s:none)

" Line numbers
call s:hi('LineNr', s:fg_darker, s:none_list, s:none)
call s:hi('CursorLineNr', s:splash, s:bg_light, s:none)

" Matching bracket for the one under the cursor
call s:hi('MatchParen', s:splash, s:none_list, s:bold)

call s:hi('Normal')
call s:hi('NonText', s:nothing, s:bg, s:none)
hi! link Ignore NonText

" Popup menu
call s:hi('Pmenu', s:none_list, s:bg_lighter, s:none)
call s:hi('PmenuSbar', s:none_list, s:bg_light, s:none)
call s:hi('PmenuSel', s:splash, s:bg_light, s:none)
call s:hi('PmenuThumb', s:none_list, s:splash, s:none)

call s:hi('Question', s:fg_dark, s:none_list, s:none)

call s:hi('QuickFixLine', s:none_list, s:black, s:none)

" Unprintable characters
call s:hi('SpecialKey', s:fg_dark, s:none_list, s:none)

" Spelling
call s:hi('SpellBad', s:red, s:none_list, s:underline)
call s:hi('SpellCap', s:red, s:none_list, s:underline)
call s:hi('SpellLocal', s:red, s:none_list, s:underline)
call s:hi('SpellRare', s:red, s:none_list, s:underline)

" Status line
call s:hi('StatusLine', s:splash, s:bg_lighter, s:none)
call s:hi('StatusLineNC', s:fg_dark, s:bg_light, s:none)

" Tabs
call s:hi('TabLine', s:fg_dark, s:bg_light, s:none)
call s:hi('TabLineFill', s:fg_dark, s:bg_light, s:none)
call s:hi('TabLineSel', s:splash, s:bg_lighter, s:none)

call s:hi('Title', s:fg, s:none_list, s:bold)

" Visual selection
call s:hi('Visual', s:none_list, s:bg_lighter, s:none)
call s:hi('VisualNOS', s:none_list, s:nothing, s:none)

call s:hi('helpHyperTextJump', s:splash, s:bg, s:none)
" }}}

" Syntax: {{{
call s:hi('Comment', s:fg_darker, s:bg, s:none)
call s:hi('Constant', s:splash, s:bg, s:none)
call s:hi('Identifier', s:fg, s:bg, s:none)
call s:hi('Statement', s:fg_dark, s:bg, s:none)
call s:hi('PreProc', s:fg_dark, s:bg, s:none)
call s:hi('Type', s:fg, s:bg, s:none)
call s:hi('Special', s:fg_dark, s:none_list, s:none)
call s:hi('Todo', s:white, s:none_list, s:bold)
call s:hi('Underlined', s:fg, s:none_list, s:underline)
" }}}
