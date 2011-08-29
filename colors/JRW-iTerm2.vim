" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 Jul 23

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "JRW-iTerm2"

hi NonText ctermfg=0 
hi LineNr ctermfg=0
hi vimLineComment ctermfg=10
hi Normal ctermfg=15
hi Pmenu ctermbg=10

"Spell Checking
hi SpellBad ctermbg=0 cterm=underline
hi SpellCap ctermbg=0 cterm=underline
hi SpellRare ctermbg=0 cterm=underline
hi SpellLocal ctermbg=0 cterm=underline
" vim: sw=2
