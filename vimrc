"
" ~/.vimrc
" This is from a C/C++ support plugin for Vim. It works fine so I just use it
" as my personal vim setup with some extra tweaks.
"

"set t_Co=256
set nocompatible
filetype  plugin on
filetype  indent on
syntax    on            

set modeline
set modelines=5

"colorscheme soft-lettuce
"colorscheme satori_n8
colorscheme xoria256-custom
"colorscheme tabula

"set cul 
"set number
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
"set backup
set browsedir=current
set complete+=k
set history=50
set hlsearch
set incsearch
set listchars=tab:>.,eol:\$
set mouse=a
set nowrap
set popt=left:8pc,right:3pc
set ruler
"set shiftwidth=4
set showcmd
set smartindent
set expandtab
"set tabstop=4
set visualbell
set wildignore=*.bak,*.o,*.e,*~
set wildmenu
"set number

if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif

noremap  <C-Esc>       :close<CR>
inoremap  <C-Esc>  <C-C>:close<CR>

noremap  <silent> <s-tab>       :if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
inoremap  <silent> <s-tab>  <C-C>:if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nnoremap  <C-q>    :wqall<CR>

if has("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif

map   <silent> <F2>        :write<CR>
map   <silent> <F3>        :Explore<CR>
nmap  <silent> <F4>        :exe ":ptag ".expand("<cword>")<CR>
map   <silent> <F5>        :copen<CR>
map   <silent> <F6>        :cclose<CR>
map   <silent> <F7>        :cp<CR>
map   <silent> <F8>        :cn<CR>
"
imap  <silent> <F2>   <Esc>:write<CR>
imap  <silent> <F3>   <Esc>:Explore<CR>
imap  <silent> <F4>   <Esc>:exe ":ptag ".expand("<cword>")<CR>
imap  <silent> <F5>   <Esc>:copen<CR>
imap  <silent> <F6>   <Esc>:cclose<CR>
imap  <silent> <F7>   <Esc>:cp<CR>
imap  <silent> <F8>   <Esc>:cn<CR>

map  <silent> <s-tab>  <Esc>:if &modifiable && !&readonly && 
     \                  &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
imap  <silent> <s-tab>  <Esc>:if &modifiable && !&readonly && 
     \                  &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

nmap  <C-q>    :wqa<CR>

"inoremap  ,  ,<Space>

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

vnoremap ( s()<Esc>P<Right>%
vnoremap [ s[]<Esc>P<Right>%
vnoremap { s{}<Esc>P<Right>%
vnoremap " s""<Esc>P<Right>%

xnoremap  '  s''<Esc>P<Right>
xnoremap  "  s""<Esc>P<Right>
xnoremap  `  s``<Esc>P<Right>

if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif

noremap <silent> <F11>  <Esc><Esc>:Tlist<CR>
inoremap <silent> <F11>  <Esc><Esc>:Tlist<CR>

let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select 				= 1

let tlist_make_settings  = 'make;m:makros;t:targets'
let tlist_qmake_settings = 'qmake;t:SystemVariables'

if has("autocmd")
  autocmd BufNewFile,BufRead *.pro  set filetype=qmake
endif

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"set tags+=~/.vim/tags/incdir
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4

"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1
"let OmniCpp_MayCompleteDot = 1
"let OmniCpp_MayCompleteArrow = 1
"let OmniCpp_MayCompleteScope = 1
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"map <C-I> :pyf ~/.vim/clang-format.py<cr>
"imap <C-I> <c-o>:pyf ~/.vim/clang-format.py<cr>

function! ClangFormatFile()
  let l:lines="all"
  pyf ~/.vim/clang-format.py
endfunction

map <C-f> :call ClangFormatFile()<cr>
imap <C-f> <c-o>:call ClangFormatFile()<cr>

let mapleader = ","

" ,cpl - Copy the current line:
nmap <Leader>cpl 0v$y<CR>

" ,d2i - Declaration to Implementation
" For example this:
"     
"     int my_function(int foo, char *bar);
"
" Will become this:
"
"     int my_function(int foo, char *bar)
"     {}
"
function! D2IFun()
  exe "normal! $Do{}"
endfunction
nmap <Leader>d2i :call D2IFun()<CR>

function! CMLFun()
  exe "normal! 0i//"
endfunction
nmap <Leader>cml :call CMLFun()<CR>

execute pathogen#infect()
