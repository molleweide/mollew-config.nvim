""""""" completion menu
set completeopt=menu,noinsert

""""""" language client
" js - yarn global add flow-language-server
" ruby - gem install solargraph
let g:LanguageClient_serverCommands = {
  \ 'javascript': ['flow-language-server', '--stdio'],
  \ 'javascript.jsx': ['flow-language-server', '--stdio'],
  \ 'ruby': ['solargraph', 'stdio'],
  \ }

" allow subfolders to act as project root when in a monorepo
let g:LanguageClient_rootMarkers = ['.projectile', '.root', '.git']

nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>

""""""" lexima for auto-parens
let g:lexima_no_default_rules = 1
call lexima#set_default_rules()
call lexima#insmode#map_hook('before', '<CR>', '')

""""""" Deoplete setup
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:deoplete#auto_completion_start_length = 3

" complete file names from the buffer's path
let g:deoplete#file#enable_buffer_path = 1

" in ms
let g:deoplete#auto_complete_delay = 75
let g:deoplete#auto_refresh_delay = 150

" 20mb limit for ctags
let deoplete#tag#cache_limit_size = 20000000

let g:deoplete#sources = {}

let g:deoplete#sources._ = [
  \ 'LanguageClient',
  \ 'around',
  \ 'buffer',
  \ 'member',
  \ 'file',
  \ ]

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

let g:endwise_no_mappings = 1

" https://github.com/simonweil/dotfiles/blob/master/nvimrc#L29-L85
let g:UltiSnipsExpandTrigger = '<NOP>'
let g:UltiSnipsJumpForwardTrigger = '<NOP>'
let g:UltiSnipsJumpBackwardTrigger = '<NOP>'
let g:SuperTabMappingForward = '<NOP>'
let g:SuperTabMappingBackward = '<NOP>'
" Don't unmap my mappings
let g:UltiSnipsMappingsToIgnore = [ "SmartTab", "SmartShiftTab" ]

" Make <CR> smart
let g:ulti_expand_res = 0
function! Ulti_ExpandOrEnter()
  " First try to expand a snippet
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res
    " if successful, just return
    return ''
  elseif pumvisible()
    " if in completion menu - just close it and leave the cursor at the
    " end of the completion
    return deoplete#mappings#close_popup()
  else
    " otherwise, just do an "enter"
    return lexima#expand('<CR>', 'i')
  endif
endfunction

inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>

" Enable tabbing and shift-tabbing through list of results
function! g:SmartTab()
  if pumvisible()
    return SuperTab("n")
  else
    call UltiSnips#JumpForwards()

    if g:ulti_jump_forwards_res == 0
      return SuperTab("n")
    endif

    return ''
  endif
endfunction

inoremap <silent> <tab> <C-R>=g:SmartTab()<cr>
snoremap <silent> <tab> <Esc>:call g:SmartTab()<cr>

function! g:SmartShiftTab()
  if pumvisible()
    return SuperTab("p")
  else
    call UltiSnips#JumpBackwards()
    if g:ulti_jump_backwards_res == 0
      return SuperTab("p")
    endif
    return ''
  endif
endfunction

inoremap <silent> <s-tab> <C-R>=g:SmartShiftTab()<cr>
snoremap <silent> <s-tab> <Esc>:call g:SmartShiftTab()<cr>
