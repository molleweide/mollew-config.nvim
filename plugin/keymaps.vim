scriptencoding utf-8

"Clear current search highlight by hitting g + /
nmap <silent> g/ :nohlsearch<CR>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> vs <C-w>s

"make Y consistent with C and D
nnoremap Y y$
function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

" remap : to ; and vice versa
nnoremap ; :
" nnoremap : ;

" background out of insert mode
inoremap <C-Z> <Esc><C-Z>

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

" Remove arrow keys in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove arrow keys in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove arrow keys in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>


" /////////////////////

" Replace ex mode with gq
nnoremap Q gq
nnoremap Qp vipgq<esc>

" Replace all is aliased to S.
noremap <leader>RA :%s//g<Left><Left>

" remap ESC to jk
" works well w/qwerty and colemak
inoremap zm <esc>

""(v)im (r)eload
" nmap <silent> ,vr :so %<CR>
nmap <silent> <leader>vr :source $MYVIMRC<CR>

" Man pages
nmap <leader>m :Man<space>


" Mappings to move lines
" alt+j/k to move up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" ================ Kmonad workarounds ==========================

" nnoremap <silent> <Leader>1 <C-!>
" nnoremap <silent> <Leader>2 <C-@>
" nnoremap <silent> <Leader>3 <C-#>
" nnoremap <silent> <Leader>4 <C-$>
" nnoremap <silent> <Leader>5 <C-%>
nnoremap <silent> <Leader>6 <C-^>
" nnoremap <silent> <Leader>7 <C-&>
" nnoremap <silent> <Leader>8 <C-*>
" nnoremap <silent> <Leader>9 <C-(>
" nnoremap <silent> <Leader>0 <C-)>
"
" ================ Aliases ==========================

nnoremap <silent> <Leader>kS :e ~/.dotfiles/surfingkeys/config.js<CR>
nnoremap <silent> <Leader>kV :e ~/notes/build-nvim.md<CR>
nnoremap <silent> <Leader>kg :view ~/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh<CR>
nnoremap <silent> <Leader>knR :e ~/notes/RNDM.md<CR>
nnoremap <silent> <Leader>knf :e ~/notes/tfab.md<CR>
nnoremap <silent> <Leader>knt :e ~/notes/TODO.md<CR>
nnoremap <silent> <Leader>ks :e ~/.dotfiles/skhdrc<CR>
nnoremap <silent> <Leader>kt :e ~/.dotfiles/tmux.conf<CR>
nnoremap <silent> <Leader>kvi :e ~/.dotfiles/nvim.config/molleweide/init.lua<CR>
nnoremap <silent> <Leader>kvk :e ~/.dotfiles/nvim.config/molleweide/plugin/keymaps.vim<CR>
nnoremap <silent> <Leader>kvo :e ~/.dotfiles/nvim.config/molleweide/lua/mollw/options.lua<CR>
nnoremap <silent> <Leader>kvp :e ~/.dotfiles/nvim.config/molleweide/lua/mollw/plugins.lua<CR>

nnoremap <silent> <Leader>ky :e ~/.dotfiles/yabairc<CR>
nnoremap <silent> <Leader>kza :e ~/.dotfiles/zsh/custom/aliases.zsh<CR>
nnoremap <silent> <Leader>kze :e ~/.dotfiles/zsh/custom/exports.zsh<CR>
nnoremap <silent> <Leader>kzz :e ~/.dotfiles/zshrc<CR>

" =============== aliases: keys  ====================

nnoremap <silent> <Leader>kM :view ~/code/kmonad/keymap/tutorial.kbd<CR>
nnoremap <silent> <Leader>km :e ~/code/kmonad/keymap/user/molleweide/mbp.kbd<CR>
nnoremap <silent> <Leader>kqb :e ~/code/qmk_firmware/keyboards/ergodox_ez/keymaps/myergo/layers/base.h<CR>

" =============== aliases: reaper  ====================

nnoremap <silent> <Leader>knr :e ~/notes/reaper.md<CR>
nnoremap <silent> <Leader>krr :e ~/.dotfiles/installers/reaper<CR>

" nnoremap <silent> <Leader>Rg :e ~/REAPER/app/reaper-6.23.0/Scripts/reaper-keys/definitions/defaults/global.lua<CR>
" nnoremap <silent> <Leader>Ra :e ~/REAPER/app/reaper-6.23.0/Scripts/reaper-keys/definitions/defaults/main.lua<CR>
" nnoremap <silent> <Leader>Rm :e ~/REAPER/app/reaper-6.23.0/Scripts/reaper-keys/definitions/defaults/midi.lua<CR>

"

" colemak layout insert mode
set keymap=INSERT_COLEMAK
set iminsert=1
set imsearch=0

" re-indent file
map <leader>,i mzgg=G`z<CR>



" =============== Buffer nav ===============
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
" restore jump forwards command that is tied to <Tab>
nnoremap <Leader>i <C-i>

" Close buffer
nmap <leader>x :bd<CR>


" TODO
"
" noremap <Space> <PageDown>
" noremap - <PageUp>

" " Easier copy/paste
" vnoremap p "_dP
" nmap <leader>y <g>SystemCopy
" xmap <leader>y <g>SystemCopy
" nmap <leader>p <g>SystemPaste
" nmap <leader>yy <g>SystemCopyLine
" tnoremap <Esc> <C-\><C-n>

" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
vnoremap <leader>p "_dP

" quicker save
nnoremap <leader>cc :w<CR>
nnoremap <leader>. :w<CR>
nnoremap cx :w<CR>

" space on control L
inoremap <C-l> <Space>
cnoremap <C-l> <Space>

" convert inner word to CAPITAL letters
nnoremap <leader>u viwUe
nnoremap <leader>U viwue

" =============== gin Test ===============
" test plugin `Whid`
nnoremap <leader>W :Whid<CR>


" =============== help ====================

" create custom command to close help
:command! H :helpc



" help for word under cursor
"   how can I move this to which key?
nnoremap <leader>hh "zyiw:h <C-r>z<CR>
nnoremap <leader>H "zyiW:h <C-r>z<CR>

" =============== other ====================


" " Move vertically by visual line
" nnoremap j gj
" nnoremap k gk
" vnoremap j gj
" vnoremap k gk
" nnoremap gj j
" nnoremap gk k


" " === Emmet === "
" " let g:user_emmet_expandabbr_key = '<C-e>,'
" let g:user_emmet_expandabbr_key = '<C-e>,'


" ======== cyclist | listchars ========
nmap <leader>cn <g>CyclistNext
nmap <leader>cp <g>CyclistPrev

call cyclist#add_listchar_option_set('limited', {
                  \ 'eol': '???',
                  \ 'tab': '?? ',
                  \ 'trail': '??',
                  \ 'extends': '<',
                  \ 'precedes': '>',
                  \ 'conceal': '???',
                  \ 'nbsp': '???',
                  \ })

call cyclist#add_listchar_option_set('busy', {
                  \ 'eol': '???',
                  \ 'tab': '????',
                  \ 'space': '???',
                  \ 'trail': '-',
                  \ 'extends': '???',
                  \ 'precedes': '???',
                  \ 'conceal': '???',
                  \ 'nbsp': '???',
                  \ })


" ======== snippets  ========
nnoremap <leader>S :Snippets<CR>
nnoremap <leader>E :UltiSnipsEdit<CR>

" ============ Markdown writing ============

" let g:quickfix_is_open = 0
" function! QuickfixToggle()
"     if g:quickfix_is_open
"         cclose
"         let g:quickfix_is_open = 0
"         execute g:quickfix_return_to_window . "wincmd w"
"     else
"         let g:quickfix_return_to_window = winnr()
"         copen
"         let g:quickfix_is_open = 1
"     endif
" endfunction
nnoremap <leader>G :Goyo<CR>
nnoremap dh :set wrap linebreak<CR>
nnoremap dl :set wrap! linebreak!<CR>

" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!


" ============ line operations  ============

" run current line through shell
nnoremap <leader>Zs !!$SHELL <CR>

" run current line in commandline
nnoremap <leader>Zl yy:@" <CR>

" read file
" :r file               to after cursor
" :$r                   to end of buffer
" :0r                   to end of buffer
" :{x}r                 to after line x
" :/pattern/r file      to after pattern
nnoremap <leader>Rf :r<space>
nnoremap <leader>Re :$r<space>
nnoremap <leader>Rb :0r<space>
nnoremap <leader>Rl :r <Left><Left>
nnoremap <leader>Rp ://r <Left><Left><Left>

nnoremap <leader>RS :%&g<cr>


" sudo write
nnoremap <leader>ZZ :w !sudo tee %

" ============ Tags  ============

nnoremap <leader>p :pop<CR>
nnoremap <leader>P :tag<CR>

" ============ F inclusive  ============
" this is more tricky than i expected it to be since you
" still want to be able to compose commands with a regular {count}
"
" read :map-operator
" https://vi.stackexchange.com/questions/2791/how-to-design-a-command-in-a-plugin-that-can-be-called-from-vimrc


" this is not working
" nnoremap cF cvF
" nnoremap dF dvF

" nnoremap <silent> c :set opfunc=ChangeBackw<cr>g@
" nnoremap <silent> d :set opfunc=DelBackw<cr>g@
" nnoremap <silent> y :set opfunc=YankBackw<cr>g@

" function! Surround(vt, ...)
"     let s = InputChar()
"     if s =~ "\<esc>" || s =~ "\<c-c>"
"         return
"     endif
"     let [sl, sc] = getpos(a:0 ? "'<" : "'[")[1:2]
"     let [el, ec] = getpos(a:0 ? "'>" : "']")[1:2]
"     if a:vt == 'line' || a:vt == 'V'
"         call append(el, s)
"         call append(sl-1, s)
"     elseif a:vt == 'block' || a:vt == "\<c-v>"
"         exe sl.','.el 's/\%'.sc.'c\|\%'.ec.'c.\zs/\=s/g|norm!``'
"     else
"         exe el 's/\%'.ec.'c.\zs/\=s/|norm!``'
"         exe sl 's/\%'.sc.'c/\=s/|norm!``'
"     endif
" endfunction

" ============ Tab  ============

nnoremap <Leader>tn :tabnew<cr>
nnoremap gl gt
nnoremap gL gT
nnoremap <Leader>g0 :tabr<cr>
nnoremap <Leader>g$ :tabl<cr>
nnoremap <Leader>gh :tabm -<cr>
nnoremap <Leader>gl :tabm +<cr>

" ==================================
" ============ Testing  ============
" ==================================

" script variables s:
let s:counter = 0
function MyCounter()
      let s:counter = s:counter + 1
      echo s:counter
endfunction
command Tick call MyCounter()

" does the same
let s:counter = 0
command Tick2 let s:counter = s:counter + 1 | echo s:counter

