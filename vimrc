"The whole point of Vim is lost if you restrict it to Vi compatibility
set nocompatible

"Allow Vim to deal with buffers that have unsaved edits and are not in view
set hidden

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

syntax enable
set encoding=utf-8
set ttyfast

"Theme and Font
set gfn=AnonymousPro:h14  
let g:solarized_bold = 1
let g:solarized_underline = 1
let g:solarized_italic = 1

if has('gui_running')
    set background=dark
    colorscheme JRW-solar
else
    set t_Co=256
    set background=dark
    colorscheme JRW-iTerm2
endif

"Give a little more space between lines
set linespace=2.1

"Hide the intro message
set shortmess+=I

"Set the hidden characters to match TextMate
set listchars=tab:▸\ ,eol:¬

"Show statusbar with position and command indicated
set laststatus=2
set ruler
set showcmd
set showmode

"Set tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"Ensure 3 lines before and after current line show on the screen
set scrolloff=3

"Set the leader character to comma instead of backslash
let mapleader = ","

"Search
"Use sane regexes.
"nnoremap / /\v
"vnoremap / /\v

"Ignore case unless there is some upper case in the search term
set ignorecase
set smartcase

"Incremental search with matches highlighted until you hit <leader>space
set incsearch
set showmatch
set hlsearch
noremap <leader><space> :noh<cr>

"Global line search by default
set gdefault

"Keep search matches in the middle of the window.
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv

"Easier linewise reselection
nnoremap <leader>v V`]

"This allows you in visual block mode to select even where there is no actual
"character
set virtualedit+=block

runtime macros/matchit.vim

"Make these consistent
nnoremap Y y$
nnoremap D d$

"L is easier to type, and I never use the default behavior.
noremap L $

"Set e to go into append mode. E still does what e did
map e ea

"Give hard returns by column 80

"Turn on spellcheck by default
set spell spelllang=en_us
nmap <leader>s :setlocal spell! spelllang=en_us<cr>
"Only show ten results when I hit 'z=' on a misspelled word
set spellsuggest=9

"Wrapping: Start with wrap on
set wrap
set linebreak nolist
set textwidth=0
"Help Vim work better with long wrapped lines
setlocal display+=lastline
"Keyboard shortcuts to toggle wrapping
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    setlocal nowrap
    set formatoptions+=at
    set textwidth=72
    echo "Hard Wrap ON"
  else
    setlocal wrap 
    set formatoptions-=at
    set textwidth=0
    set linebreak nolist
    echo "Soft Wrap ON"
  endif
endfunction

noremap <silent> <Leader>W :call NoWrap()<CR>
function NoWrap()
    setlocal nowrap
    set formatoptions-=at
    set textwidth=0
    echo "Wrap OFF"
endfunction

"Make it easy to edit .vimrc
noremap <leader>vv :e $MYVIMRC<cr>
noremap <leader>gv :e $MYGVIMRC<cr>

"Make the movement keys work well with wrapping on
noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
"noremap  <buffer> <silent> <Home> g<Home>
"noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
"inoremap <buffer> <silent> <Home> <C-o>g<Home>
"inoremap <buffer> <silent> <End>  <C-o>g<End>
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

"Settings for the command mode autocompletion
set wildmenu
set wildmode=list:longest

"Allow the backspace key to work like in most editors
set backspace=indent,eol,start

"Do an autosave of all buffers each time I switch away from Vim
"au FocusLost * :wa

"Only in command mode, allow me to use semicolon instead of colon
nnoremap ; :
vnoremap ; :
"Semicolon is useful to repeat f and t commands, so map it to colon
nnoremap : ;
vnoremap : ;

"Use jj to move to command mode instead of Escape
inoremap jj <ESC>

"Don't leave swap files and backups scattered around
set history=1000
set nobackup
set noswapfile
"set nowb
set undolevels=1000
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

"Prettier vertical splits
set fillchars=vert:│

"Change case
nnoremap <C-u> gUiw
inoremap <C-u> <esc>gUiwea

"Yankring
nnoremap <silent> <F6> :YRShow<cr>

"Turn on man pages (type :Man)  
runtime ftplugin/man.vim

"Show the full path of the current file when opening a new file
noremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

"Status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
"Show syntax highlighting groups for word under cursor in status line
set statusline+=\ \ \ %{synIDattr(synID(line('.'),col('.'),1),'name')}

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/fholgado/', "~/", "g")
    return curdir
endfunction

"Set the key for hexHighlight to ,h
noremap <leader>x :call HexHighlight()<Return>

"Bubble text using Unimpaired
"Bubble single lines
nmap <C-M-D-Up> [e
nmap <C-M-D-Down> ]e
"Bubble multiple lines
vmap <C-M-D-Up> [egv
vmap <C-M-D-Down> ]egv

"Reselect after indenting or outdenting
vmap > >gv
vmap < <gv

"Markdown shortcuts
nnoremap <leader>h1 yypVr=
nnoremap <leader>h2 yypVr-
noremap <leader>mk :%!Markdown.pl --html4tags<cr>

"IMPORTANT: grep will sometimes skip displaying the file name if you
"search in a singe file. This will confuse Latex-Suite. Set your grep
"program to always generate a file-name.
set grepprg=grep\ -nH\ $*

"OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = 'Preview'

"Get around swapfile creation problem
set directory=.,$TEMP

"Show line numbers and make them relative
set nu

"Map cmd-/ to comment the current line n cmd-/ to comment multiple lines
map <D-/> <leader>c<space>

"Make shift-arrows work as expected on a Mac
if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif

"2 lines for commands
set cmdheight=2

"Only relevant when using Vim in the terminal
set title

"Make * and # work as expected in visual mode
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"Make completions work as expected
set completeopt+=longest

"Exchange the ' and ` keys because ' is easier to type and ` is more useful
nnoremap ' `
nnoremap ` '

"Tell Vim that you are pasting text so it will not apply autoindent
set pastetoggle=<F2>

"Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Easy window navigation
map <C-h> <C-w>h
noremap <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"A reminder: <Leader>p is set to invoke peepopen

"No scrollbars
if has('gui_running')
    set guioptions = egm
endif

"For ConqueShell
nnoremap <leader>q :ConqueTermSplit zsh<cr>

"Some shortcuts to reformat text
"(assumes that : has been mapped to ; and that textwidth should be 0)
"Reformat document (remove <cr> at the end of lines)
map <leader>rg ;set tw=99999999<cr>gggqG;set tw=0<cr>
"Reformat paragraph
map <leader>rp ;set tw=99999999<cr>gqip;set tw=0<cr>

"Switch the current directory to the directory of the file when opening
autocmd BufEnter * cd %:p:h

"Commands to make Vim work nicely with Java
autocmd BufRead *.java set include=^#\s*import 
autocmd BufRead *.java set includeexpr=substitute(v:fname,'\\.','/','g')
map gf <C-W>f
set makeprg=ant\ -emacs
set efm=\ %#[javac]\ %#%f:%l:%c:%*\\d:%*\\d:\ %t%[%^:]%#:%m,\%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#

"ctags
set tags=.tags;/
