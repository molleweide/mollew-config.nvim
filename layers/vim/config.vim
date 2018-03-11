" minimum width
set winwidth=100

" Put contents of unnamed register in OS X clipboard
set clipboard=unnamed

" map leader key to comma
let mapleader = ","
let g:mapleader = ","

" remap ESC to jk
inoremap jk <esc>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap ,yw yiww

"make Y consistent with C and D
nnoremap Y y$
function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

"(v)im (r)eload
nmap <silent> ,vr :so %<CR>

" remap : to ;
nnoremap ; :

" background
inoremap <C-Z> <Esc><C-Z>

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v
