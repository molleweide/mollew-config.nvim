" ==================== LSP ======================

set completeopt=menu,menuone,noselect

" nnoremap <silent> gh :Lspsaga lsp_finder<CR>
" nnoremap <silent>K :Lspsaga hover_doc<CR>

nnoremap <silent><space>la :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

nnoremap <silent> <space>l0  <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> <space>ld  <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <space>li  :LspInfo<CR>
nnoremap <silent> <space>lh  <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <space>lD  <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <space>ln  <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <space>lr  <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <space>lt  <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <space>lw  <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

