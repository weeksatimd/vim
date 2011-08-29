set visualbell

"Show line numbers and make them relative
set nu
auto bufenter * set relativenumber

"Create a persistent undo file allowing undo after quit
set undofile
set undodir=~/.vim/tmp/undo//     " undo files

"Highlight the current line
set cursorline

"Use the OSX pasteboard for yy, dd, etc.
set clipboard=unnamed

"Turn on shift to select in MacVim
let macvim_hig_shift_movement=1

"Hide the toolbar
set guioptions-=T

"Hide the scrollbar
set guioptions-=rRlL

"Open files unfolded
autocommand BufWinEnter * set foldlevel=999999

"Vim will set the current working directory to the directory of the current
"buffer
"set autochdir

set transparency = 5

"For fullscreen mode
:set fuopt+=maxhorz
