" easier splits
nnoremap <silent> ss :<C-u>call VSCodeNotify('workbench.action.splitEditorDown')<CR>
nnoremap <silent> vv :<C-u>call VSCodeNotify('workbench.action.splitEditorRight')<CR>

" comment modes
xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine
