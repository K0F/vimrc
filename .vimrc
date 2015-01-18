filetype off
"call pathogen#incubate()
"call pathogen#helptags()


"minibfexpl
let g:miniBufExplAutoStart = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplShowBufNumbers = 0
let g:miniBufExplBuffersNeeded = 1
let g:miniBufExplStatusLineText = ""
nmap <A-Left>  :MBEbp<cr>
nmap <A-Right> :MBEbn<cr>
"map <A-Left> :bp<CR>
"map <A-Right> :bn<CR>

map <A-1> :MBEb1<CR>
map <A-2> :MBEb2<CR>
map <A-3> :MBEb3<CR>
map <A-4> :MBEb4<CR>
map <A-5> :MBEb5<CR>
map <A-6> :MBEb6<CR>
map <A-7> :MBEb7<CR>
map <A-8> :MBEb8<CR>
map <A-9> :MBEb9<CR>

command! Q MBEbd


call pathogen#infect()

ab ndef (<CR>Ndef(\a).fadeTime = 2.0;<CR>Ndef(\a).quant = 2.0;<CR>Ndef(\a,{<CR>Splay.ar(<CR><CR>)}).play;<CR>)<CR><esc>3ki<tab><tab><tab><tab><tab>
ab stepper Select.kr(Stepper.kr(Impulse.kr(1)),[]);<esc>2h<esc>i

inoremap <tab> <tab>

filetype plugin indent on

au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 
au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead *.sc,*.scd setf supercollider


syntax on
set hlsearch
set backup
set backupdir=~/.vim/backup,/tmp 
set spelllang=cs,en,csa

"" Hides the buffer instead of closing. Allows switch unsaved buffers.
set hidden

"" No backup and swap files
set nobackup
set noswapfile

"" Loads standard MS-Windows way of CTRL-X, CTRL-C and CTRL-V
"source $VIMRUNTIME/mswin.vim
"behave mswin


let g:sclangPipeApp     = "~/.vim/bundle/scvim/bin/sclangpipe_app"
let g:sclangTerm = "gnome-terminal -x $SHELL -ic"

set wildchar=<Tab>
set wildmenu
set wildmode=longest:full,full 

set langmap=ě2,š3,č4,ř5,ž6,ý7,á8,í9,é0,\":,-/,_? 

set number
set numberwidth=3
set cpoptions+=n

let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'

nmap <F2> :w<CR> :!git commit -a<CR>
nmap <F3> :w<CR> :!git commit -am "AutoCommit @ $(date)"<CR>
nmap <F4> :w<CR> :!git commit -am "AutoCommit @ $(date)"<CR> :!git pull<CR> :!git push<CR>
nmap <F9> :w! /tmp/text<CR> :!renderText /tmp/text<CR> :!rm /tmp/.text.swp<CR>

set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

au BufRead,BufNewFile *.scss set filetype=scss

function EvalLiveRuby() range
  let text = [join(getline(a:firstline, a:lastline), ';')]
  return writefile(text, '/tmp/live-rb')
endfunction

"map <Leader>x :call EvalLiveRuby()<enter>

"filetype plugin indent on
set nu
set showmatch
set ai
set et
set sw=2
set sts=2
set ts=8
set hls

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END

"let g:miniBufExplMapCTabSwitchBufs = 1 
colorscheme distinguished
