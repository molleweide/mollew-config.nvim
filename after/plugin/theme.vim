" ================ Theme ========================

set termguicolors
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
colorscheme nightfly

" enable transparent terminal bg
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

" highlight hex colors in these file types
au BufNewFile,BufRead *.css,*.html,*.htm,*.sass,*.scss :ColorHighlight!
