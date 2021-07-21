" ============== yank ======================

" highlights yanked text for a little extra visual feedback
" so we don't need to rely on visual mode as much, try yip or y4y
augroup highlight_yank
  if has("nvim-0.5")
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
  endif
augroup END
