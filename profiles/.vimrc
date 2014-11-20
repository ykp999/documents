set helplang=cn

let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set encoding=utf-8
set ambiwidth=double 

hi Comment ctermfg=Green 

filetype on
filetype plugin on
filetype indent on 

set hlsearch
set incsearch 

syntax enable
colorscheme koehler
set nu
set backspace=2

set tabstop=4
set softtabstop=4

set shiftwidth=4

set autoindent

set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

" set guifont=Consolas:h10

set bsdir=buffer
set autochdir

set fdm=indent

if &term=="xterm"
set t_Co=8
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif

:map <F1> :tabprevious<CR>
:map <F2> :tabnext<CR>
:map <F3> :tabnew<CR>
:map <F4> :NERDTreeToggle<CR>
:map f :NERDTreeToggle<CR>
:map <F5> :% !xmllint.exe % --format<CR>
:map <F12> :TlistToggle<CR>

" options for latex-suilt

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" end options for latex-suilt

" for ctags
set tags=tags;
set autochdir 
" end for ctags

" for taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
" end for taglist

" for winmanager
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr> 
" end for winmanager
