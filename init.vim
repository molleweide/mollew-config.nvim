" use vim settings, rather then vi settings (much better!).
" this must be first, because it changes other options as a side effect.
"
set nocompatible

" =============== character fixes ====================

scriptencoding utf-8
set encoding=utf-8

" ================ general config ====================

let mapleader=","
let g:mapleader=","

set path+=**
set wildmenu
set history=1000                "store lots of :cmdline history
set showcmd                     "show incomplete cmds down the bottom
set showmode                    "show current mode down the bottom
set visualbell                  "no sounds
set autoread                    "reload files changed outside vim
set ruler                       "show ruler
set laststatus=2                "fix status bar
set undolevels=1000             "undo levels
set number
set relativenumber
set foldmethod=indent
set noruler
set cursorline " highlight cursor line and column
set cursorcolumn
set mouse=n
set hidden
set guifont=Inconsolata-g\ for\ Powerline

set noexrc
set noex
set nosecure

set winwidth=100
set clipboard=unnamed

set noswapfile
set nobackup
set nowb

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set nowrap       " Don't wrap lines
set linebreak    " Wrap lines at convenient points

set scrolloff=4         "Start scrolling when we're 4 lines away from margins
set sidescrolloff=15
set sidescroll=1

set colorcolumn=81

set splitright
set splitbelow

" wildignore
set wildignore+=node_modules/*,bower_components/*,vendor/bundle/*,tmp/*

" ==== not done

" set backspace=indent,eol,start  "allow backspace in insert mode
" set gcr=a:blinkon0              "disable cursor blink
" syntax on
" set list
" set listchars=tab:▸\ ,trail:ـ,extends:➧,eol:¬
" set list listchars=tab:\ \ ,trail:·

" filetype plugin on
" filetype indent on

" ================ Plugins ==========================

call plug#begin('~/.local/nvim/plugins')

" Core
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Konfekt/vim-alias'
Plug 'nanotee/nvim-lua-guide'         " additional help under :h nvim-lua-guide
Plug 'liuchengxu/vim-which-key'       " context menu when hitting leader key(s)
" https://github.com/folke/which-key.nvim
Plug 'kevinhwang91/nvim-bqf'          " better quickfix

" Editing
Plug 'rhysd/clever-f.vim'             " hit `f` to repeat search
Plug 'romgrk/nvim-treesitter-context' " show function context as you scroll
Plug 'AndrewRadev/splitjoin.vim'      " split/join single line/multiline
Plug 'AndrewRadev/switch.vim'         " switch syntaxes around with `gs`
Plug 'tpope/vim-commentary'           " comment with `gcc`
Plug 'romainl/vim-cool'               " disable highlights automatically on cursor move
Plug 'easymotion/vim-easymotion'      " ,,w and ,,b to jump to objects
Plug 'justinmk/vim-sneak'             "       should be even faster than easymotion
Plug 'tpope/vim-projectionist'        " alternate files with :AV/:AS
Plug 'kshenoy/vim-signature'          " show marks in the gutter
Plug 'itspriddle/vim-stripper'        " strip whitespace on save
Plug 'tpope/vim-surround'             " cs`' to change `` to '', etc
Plug 'milkypostman/vim-togglelist'    " <leader>q to toggle quickfix
Plug 'tjdevries/cyclist.vim'          " <leader>q to toggle quickfix
Plug 'mbbill/undotree'                " visualize undo tree

" Files
Plug 'danro/rename.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/unite.vim'
Plug 'rbgrouleff/bclose.vim'        " Ranger dependency
Plug 'francoiscabrol/ranger.vim'
" Plug 'justinmk/vim-dirvish'
" Plug 'justinmk/vim-gtfo'

" LSP
Plug 'neovim/nvim-lspconfig'             " out of the box LSP configs for common langs
Plug 'glepnir/lspsaga.nvim'              " code action plugin
Plug 'nvim-lua/lsp-status.nvim'          " provides statusline information for LSP
Plug 'hrsh7th/nvim-compe'                " completion engine
Plug 'onsails/lspkind-nvim'              " add vscode-style icons to completion menu
Plug 'nathunsmitty/nvim-ale-diagnostic'  " route lsp diagnostics to ALE

" Lua
Plug 'nvim-lua/plenary.nvim'            " only for nvim internal use

" Json
Plug 'elzr/vim-json'

" Markdown
" Plug 'plasticboy/vim-markdown'                " fucks up syntax hl...
Plug 'npxbr/glow.nvim', {'do': ':GlowInstall'}  " markdown preview with :Glow

" Ruby
Plug 'keith/rspec.vim'                    " better RSpec syntax highlighting
Plug 'jgdavey/vim-blockle'                " toggle block styles with ,b
Plug 'tpope/vim-rake'                     " allow for alternate files
Plug 'vim-ruby/vim-ruby'                  " indentation, etc
Plug 'joker1007/vim-ruby-heredoc-syntax'  " fenced syntax colors in heredocs
Plug 'ecomba/vim-ruby-refactoring'        " extract vars, methods, etc

" Haskell
" https://github.com/neovimhaskell/nvim-hs
" https://github.com/neovimhaskell/haskell-vim
" https://github.com/eagletmt/neco-ghc
" https://github.com/alx741/yesod.vim

" Lisp
Plug 'vlime/vlime', {'rtp': 'vim/'}       " sbcl --load <your bundle dir>/vlime/lisp/start-vlime.lisp
Plug 'lisp-mirror/quicklisp.nvim'
Plug 'tami5/lispdocs.nvim'

" Pandoc | these two mess up the syntax highlighting...
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'

" Snippets
Plug 'norcalli/snippets.nvim'
Plug 'SirVer/UltiSnips'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'honza/vim-snippets'
Plug 'craigmac/vim-vsnip-snippets'

" Syntax checking
Plug 'w0rp/ale'

" Tests
Plug 'janko-m/vim-test'

" Theming
Plug 'chrisbra/Colorizer'            " show hex colors in CSS/HTML files
Plug 'glepnir/galaxyline.nvim'       " fast Lua statusline
Plug 'kyazdani42/nvim-web-devicons'  " fancy icons
Plug 'RRethy/vim-illuminate'         " highlight duplicate words
Plug 'drzel/vim-line-no-indicator'   " nice scroll indicator
Plug 'sheerun/vim-polyglot'

" Color Schemes
Plug 'tjdevries/colorbuddy.vim'
Plug 'bkegley/gloombuddy'

Plug 'NieTiger/halcyon-neovim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'haishanh/night-owl.vim'
Plug 'bluz71/vim-nightfly-guicolors'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'melonmanchan/vim-tmux-resizer'
Plug 'benmills/vimux'

" Grep + load
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Version control
Plug 'rhysd/git-messenger.vim'  " show commit popup with <leader>gm
Plug 'tpope/vim-fugitive'       " the git plugin
Plug 'airblade/vim-gitgutter'   " show changed line marks in gutter
Plug 'tpope/vim-rhubarb'        " enable GHE/Github links with :Gbrowse

" Vimscript
Plug 'tpope/vim-scriptease'

" Tabular data
Plug 'godlygeek/tabular'
Plug 'vim-scripts/excel.vim'
Plug 'kjnh10/ExcelLikeVim'

" Misc
Plug 'mhinz/vim-startify'             " custom startup display
Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } } " supercollider front end
Plug 'tjdevries/train.nvim'           " vim motion practice game
Plug 'rajasegar/vim-search-web'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'KabbAmine/vCoolor.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'jez/vim-superman'
Plug 'vimwiki/vimwiki'
Plug 'folke/todo-comments.nvim'       " looks really nice

" Bin
" https://github.com/akinsho/nvim-toggleterm.lua
" https://github.com/romgrk/barbar.nvim
" https://github.com/ray-x/go.nvim
" https://github.com/stevearc/aerial.nvim
" https://github.com/ggandor/lightspeed.nvim
" https://github.com/marko-cerovac/material.nvim
" https://github.com/AckslD/nvim-anywise-reg.lua
" https://github.com/tversteeg/registers.nvim
" https://github.com/datwaft/bubbly.nvim
" https://github.com/jiangmiao/auto-pairs
" https://github.com/vhyrro/neorg

call plug#end()

lua <<LUA
require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained",
  highlight = { enable = true },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
}
LUA

call luaeval('require("statusline")')

call luaeval('require("which-key")')
