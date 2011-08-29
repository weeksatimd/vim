" Vim color file
" Based upon: buttercream which was based on the theme fog theme by Thomas R. Kimpton

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "JRW"

"  Highlight            Foreground              Background                      Extras

hi Normal               guifg=#213a58           guibg=#fffcec
hi NonText              guifg=#dddddd           guibg=#fffcec                   gui=bold
hi Comment              guifg=DarkGrey                                          gui=italic
hi vimLineComment       guifg=DarkGrey                                          gui=italic
hi Constant             guifg=#7070a0
hi Statement            guifg=#2aa198                                                   
hi texStatement         guifg=#2aa198                                                   
hi identifier           guifg=DarkGreen
hi preproc              guifg=#408040
hi type                 guifg=DarkBlue
hi label                guifg=#c06000
hi operator             guifg=DarkGreen                                         gui=bold
hi StorageClass         guifg=#a02060                                           gui=bold
hi Number               guifg=Blue
"hi Special              guifg=#aa8822
hi Special              guifg=#d30102
hi Cursor               guifg=LightGrey         guibg=#213a58
hi lCursor              guifg=Black             guibg=Cyan
hi CursorLine                                   guibg=#eeebdb
hi ErrorMsg             guifg=#d30102           guibg=#fffcec                   gui=bold 
hi Error                guifg=#d30102           guibg=#fffcec                   gui=bold
hi DiffText                                     guibg=DarkRed                   gui=bold
hi Directory            guifg=DarkGrey                                          gui=underline
hi LineNr               guifg=#dfd7ad
hi Delimiter            guifg=#c0b36f
hi MoreMsg              guifg=SeaGreen                                          gui=bold
hi Question             guifg=DarkGreen                                         gui=bold
hi Search               guifg=#213a58           guibg=#fffcec                   gui=underline
hi SpecialKey           guifg=Blue
hi SpecialChar          guifg=DarkGrey                                          gui=bold
hi Title                guifg=DarkMagenta                                       gui=bold
hi WarningMsg           guifg=DarkBlue          guibg=#9999cc
hi WildMenu             guifg=Black             guibg=Yellow                    gui=underline
hi Folded               guifg=DarkBlue          guibg=LightGrey
hi FoldColumn           guifg=DarkBLue          guibg=Grey
hi DiffAdd                                      guibg=DarkBlue
hi DiffChange                                   guibg=DarkMagenta
hi DiffDelete           guifg=Blue              guibg=DarkCyan                  gui=bold
hi Ignore               guifg=grey90
hi IncSearch                                                                    gui=underline
hi ModeMsg                                                                      gui=bold
hi StatusLine                                                                   gui=reverse,bold
hi StatusLineNC         guifg=#aaa797                                           gui=reverse
hi VertSplit                                                                    gui=reverse
hi Visual               guifg=#213a58                                           gui=reverse
hi VisualNOS                                                                    gui=underline,bold
hi Todo                                         guibg=#ccaa22                   gui=bold,underline
hi htmlBold                                                                     gui=bold
hi htmlItalic                                                                   gui=italicbold
hi PreProc              guifg=#cb4b16
hi vimSynType           guifg=#2aa198
hi vimCommand           guifg=#b58900
hi vimGroup             guifg=#268bd2
hi vimHiGroup           guifg=#268bd2
hi Function             guifg=#268bd2
hi Identifier           guifg=#268bd2
"hi Type                 guifg=#2f8700
hi Type                 guifg=#b58900
hi String               guifg=#2aa198
hi Number               guifg=#2aa198
hi Delimiter            guifg=#b58900
hi texSectionMarker     guifg=#cb4b16
hi texTypeStyle         guifg=Grey
hi texTypeSize          guifg=Grey
