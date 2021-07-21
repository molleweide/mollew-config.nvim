vim.cmd [[packadd vimball]]

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_wsl = (function()
  local output = vim.fn.systemlist "uname -r"
  return not not string.find(output[1] or "", "WSL")
end)()

return require("packer").startup {
  function(use)
    use "wbthomason/packer.nvim"
    use "tjdevries/astronauta.nvim"

-- Core
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
use 'Konfekt/vim-alias'
use 'nanotee/nvim-lua-guide'         -- additional help under :h nvim-lua-guide
use 'liuchengxu/vim-which-key'       -- context menu when hitting leader key(s)
-- https://github.com/folke/which-key.nvim
use 'kevinhwang91/nvim-bqf'          -- better quickfix

-- Editing
use 'rhysd/clever-f.vim'             -- hit `f` to repeat search
use 'romgrk/nvim-treesitter-context' -- show function context as you scroll
use 'AndrewRadev/splitjoin.vim'      -- split/join single line/multiline
use 'AndrewRadev/switch.vim'         -- switch syntaxes around with `gs`
use 'tpope/vim-commentary'           -- comment with `gcc`
use 'romainl/vim-cool'               -- disable highlights automatically on cursor move
use 'easymotion/vim-easymotion'      -- ,,w and ,,b to jump to objects
use 'justinmk/vim-sneak'             --       should be even faster than easymotion
use 'tpope/vim-projectionist'        -- alternate files with :AV/:AS
use 'kshenoy/vim-signature'          -- show marks in the gutter
use 'itspriddle/vim-stripper'        -- strip whitespace on save
use 'tpope/vim-surround'             -- cs`' to change `` to '', etc
use 'milkypostman/vim-togglelist'    -- <leader>q to toggle quickfix
use 'tjdevries/cyclist.vim'          -- <leader>q to toggle quickfix
use 'mbbill/undotree'                -- visualize undo tree

-- Files
use 'danro/rename.vim'
use 'Shougo/vimfiler.vim'
use 'Shougo/unite.vim'
use 'rbgrouleff/bclose.vim'        -- Ranger dependency
use 'francoiscabrol/ranger.vim'
-- use 'justinmk/vim-dirvish'
-- use 'justinmk/vim-gtfo'

-- LSP
use 'neovim/nvim-lspconfig'             -- out of the box LSP configs for common langs
use 'glepnir/lspsaga.nvim'              -- code action plugin
use 'nvim-lua/lsp-status.nvim'          -- provides statusline information for LSP
use 'hrsh7th/nvim-compe'                -- completion engine
use 'onsails/lspkind-nvim'              -- add vscode-style icons to completion menu
use 'nathunsmitty/nvim-ale-diagnostic'  -- route lsp diagnostics to ALE

-- Lua
use 'nvim-lua/plenary.nvim'            -- only for nvim internal use

-- Json
use 'elzr/vim-json'

-- Markdown
-- Plug 'plasticboy/vim-markdown'                -- fucks up syntax hl...
use { 'npxbr/glow.nvim', run = ':GlowInstall' }  -- markdown preview with :Glow

-- Ruby
use 'keith/rspec.vim'                    -- better RSpec syntax highlighting
use 'jgdavey/vim-blockle'                -- toggle block styles with ,b
use 'tpope/vim-rake'                     -- allow for alternate files
use 'vim-ruby/vim-ruby'                  -- indentation, etc
use 'joker1007/vim-ruby-heredoc-syntax'  -- fenced syntax colors in heredocs
use 'ecomba/vim-ruby-refactoring'        -- extract vars, methods, etc

-- Haskell
-- https://github.com/neovimhaskell/nvim-hs
-- https://github.com/neovimhaskell/haskell-vim
-- https://github.com/eagletmt/neco-ghc
-- https://github.com/alx741/yesod.vim

-- Lisp
-- use { 'vlime/vlime, rtp = 'vim/'}       -- sbcl --load <your bundle dir>/vlime/lisp/start-vlime.lisp
-- use 'lisp-mirror/quicklisp.nvim'
-- use 'tami5/lispdocs.nvim'

-- Pandoc | these two mess up the syntax highlighting...
-- Plug 'vim-pandoc/vim-pandoc'
-- Plug 'vim-pandoc/vim-pandoc-syntax'

-- Snippets
use 'norcalli/snippets.nvim'
use 'SirVer/UltiSnips'
use 'hrsh7th/vim-vsnip'
use 'hrsh7th/vim-vsnip-integ'

use 'honza/vim-snippets'
use 'craigmac/vim-vsnip-snippets'

-- Syntax checking
use 'w0rp/ale'

-- Tests
use 'janko-m/vim-test'

-- Theming
use 'chrisbra/Colorizer'            -- show hex colors in CSS/HTML files
use 'glepnir/galaxyline.nvim'       -- fast Lua statusline
use 'kyazdani42/nvim-web-devicons'  -- fancy icons
use 'RRethy/vim-illuminate'         -- highlight duplicate words
use 'drzel/vim-line-no-indicator'   -- nice scroll indicator
use 'sheerun/vim-polyglot'

-- Color Schemes
use 'tjdevries/colorbuddy.vim'
use 'bkegley/gloombuddy'

use 'NieTiger/halcyon-neovim'
use 'christianchiarulli/nvcode-color-schemes.vim'
use 'mhartington/oceanic-next'
use 'joshdick/onedark.vim'
use 'haishanh/night-owl.vim'
use 'bluz71/vim-nightfly-guicolors'

-- Tmux
use 'christoomey/vim-tmux-navigator'
use 'melonmanchan/vim-tmux-resizer'
use 'benmills/vimux'

-- Grep + load
use 'mileszs/ack.vim'
use 'junegunn/fzf'
use 'junegunn/fzf.vim'

-- Version control
use 'rhysd/git-messenger.vim'  -- show commit popup with <leader>gm
use 'tpope/vim-fugitive'       -- the git plugin
use 'airblade/vim-gitgutter'   -- show changed line marks in gutter
use 'tpope/vim-rhubarb'        -- enable GHE/Github links with :Gbrowse

-- Vimscript
use 'tpope/vim-scriptease'

-- Tabular data
use 'godlygeek/tabular'
use 'vim-scripts/excel.vim'
use 'kjnh10/ExcelLikeVim'

-- Misc
use 'mhinz/vim-startify'             -- custom startup display
use { 'davidgranstrom/scnvim', run = function() vim.fn['scnvim#install']() end }
use 'tjdevries/train.nvim'           -- vim motion practice game
use 'rajasegar/vim-search-web'
use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
use 'KabbAmine/vCoolor.vim'
use 'junegunn/goyo.vim'
use 'junegunn/limelight.vim'
use 'jez/vim-superman'
use 'vimwiki/vimwiki'
use 'folke/todo-comments.nvim'       -- looks really nice

-- Bin
-- https://github.com/akinsho/nvim-toggleterm.lua
-- https://github.com/romgrk/barbar.nvim
-- https://github.com/ray-x/go.nvim
-- https://github.com/stevearc/aerial.nvim
-- https://github.com/ggandor/lightspeed.nvim
-- https://github.com/marko-cerovac/material.nvim
-- https://github.com/AckslD/nvim-anywise-reg.lua
-- https://github.com/tversteeg/registers.nvim
-- https://github.com/datwaft/bubbly.nvim
-- https://github.com/jiangmiao/auto-pairs
-- https://github.com/vhyrro/neorg

    --local local_use = function(first, second)
    --  local plug_path, home
    --  if second == nil then
    --    plug_path = first
    --    home = "tjdevries"
    --  else
    --    plug_path = second
    --    home = first
    --  end

    --  if vim.fn.isdirectory(vim.fn.expand("~/plugins/" .. plug_path)) == 1 then
    --    use("~/plugins/" .. plug_path)
    --  else
    --    use(string.format("%s/%s", home, plug_path))
    --  end
    --end

    ---- My Plugins
    --local_use "nlua.nvim"
    --local_use "vim9jit"
    --local_use "colorbuddy.nvim"
    --local_use "gruvbuddy.nvim"
    --local_use "apyrori.nvim"
    --local_use "manillua.nvim"
    --local_use "cyclist.vim"
    --local_use "express_line.nvim"
    --local_use "overlength.vim"
    --local_use "pastery.vim"
    --local_use "complextras.nvim"

    ---- When I have some extra time...
    --local_use "train.vim"
    --local_use "command_and_conquer.nvim"
    --local_use "streamer.nvim"
    --local_use "bandaid.nvim"

    --local_use "nsync.nvim"
    --use "bfredl/nvim-luadev"

    ---- LSP Plugins:

    ---- NOTE: lspconfig ONLY has configs, for people reading this :)
    --use "neovim/nvim-lspconfig"
    --use "wbthomason/lsp-status.nvim"

    --local_use "lsp_extensions.nvim"
    --use "glepnir/lspsaga.nvim"
    --use "onsails/lspkind-nvim"

    --use { "akinsho/flutter-tools.nvim" }

    --use {
    --  "folke/lsp-trouble.nvim",
    --  config = function()
    --    -- Can use P to toggle auto movement
    --    require("trouble").setup {
    --      auto_preview = false,
    --      auto_fold = true,
    --    }
    --  end,
    --}

    ---- TODO: Investigate
    ---- use 'jose-elias-alvarez/nvim-lsp-ts-utils'

    --local_use("nvim-lua", "popup.nvim")
    --local_use("nvim-lua", "plenary.nvim")

    --local_use("nvim-telescope", "telescope.nvim")
    --local_use("nvim-telescope", "telescope-fzf-writer.nvim")
    --local_use("nvim-telescope", "telescope-packer.nvim")
    --local_use("nvim-telescope", "telescope-async-sorter-test.nvim")
    --local_use("nvim-telescope", "telescope-fzy-native.nvim")
    --use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

    --local_use("nvim-telescope", "telescope-github.nvim")
    --local_use("nvim-telescope", "telescope-symbols.nvim")

    --local_use "telescope-hacks.nvim"
    --local_use "telescope-sourcegraph.nvim"
    --local_use "green_light.nvim"

    --use "tami5/sql.nvim"
    --use "nvim-telescope/telescope-frecency.nvim"
    --use "nvim-telescope/telescope-cheat.nvim"
    --use { "nvim-telescope/telescope-arecibo.nvim", rocks = { "openssl", "lua-http-parser" } }

    --use {
    --  "antoinemadec/FixCursorHold.nvim",
    --  run = function()
    --    vim.g.curshold_updatime = 1000
    --  end,
    --}

    --use "nanotee/luv-vimdocs"
    --use "milisims/nvim-luaref"

    ---- PRACTICE: {{{
    --use "tpope/vim-projectionist" -- STREAM: Alternate file editting and some helpful stuff

    ---- For narrowing regions of text to look at them alone
    --use "chrisbra/NrrwRgn" -- Figure out some good ways to use this on stream

    --use "tweekmonster/spellrotate.vim"
    --use "haya14busa/vim-metarepeat" -- Never figured out how to use this, but looks like fun.
    ---- }}}
    ---- VIM EDITOR: {{{

    ---- Little know features:
    ----   :SSave
    ----   :SLoad
    ----       These are wrappers for mksession that work great. I never have to use
    ----       mksession anymore or worry about where things are saved / loaded from.
    --use "mhinz/vim-startify"

    ---- Better profiling output for startup.
    --use "dstein64/vim-startuptime"
    ---- use 'tweekmonster/startuptime.vim'  -- Might switch back to this, but they are incompatible.

    ---- Pretty colors
    --use "norcalli/nvim-colorizer.lua"
    --use "norcalli/nvim-terminal.lua"

    ---- Make comments appear IN YO FACE
    --use "tjdevries/vim-inyoface"

    ---- Show only what you're searching for.
    ---- STREAM: Could probably make this a bit better. Definitely needs docs
    --use "tjdevries/fold_search.vim"

    --use "tweekmonster/exception.vim"
    --use "tweekmonster/haunted.vim"

    ---- :Messages <- view messages in quickfix list
    ---- :Verbose  <- view verbose output in preview window.
    ---- :Time     <- measure how long it takes to run some stuff.
    --use "tpope/vim-scriptease"

    ---- Quickfix enhancements. See :help vim-qf
    --use "romainl/vim-qf"

    --use {
    --  "glacambre/firenvim",
    --  run = function()
    --    vim.fn["firenvim#install"](0)
    --  end,
    --}

    ---- TODO: Eventually statusline should consume this.
    --use "mkitt/tabline.vim"

    --use "kyazdani42/nvim-web-devicons"
    --if not is_wsl then
    --  use "yamatsum/nvim-web-nonicons"
    --end

    ---- use { 'Shougo/defx.nvim', }
    --use "kyazdani42/nvim-tree.lua"
    --use "lambdalisue/vim-protocol"

    ---- Undo helper
    --use "sjl/gundo.vim"

    ---- TODO: This randomly disappeared? Find a replacement sometime.
    ---- Make cool signs for your files
    ---- use 'johannesthyssen/vim-signit'

    ---- Crazy good box drawing
    --use "gyim/vim-boxdraw"

    ---- Better increment/decrement
    --use "monaqa/dial.nvim"

    ----   FOCUSING: {{{
    --use "junegunn/goyo.vim"
    --use "junegunn/limelight.vim"
    ----   }}}
    ---- }}}
    ----  LANGUAGE: {{{
    ---- TODO: Should check on these if they are the best ones
    --use "neovimhaskell/haskell-vim"
    --use "justinmk/vim-syntax-extra"
    --use "elzr/vim-json"
    --use "goodell/vim-mscgen"
    --use "pearofducks/ansible-vim"
    --use "PProvost/vim-ps1"
    --use "cespare/vim-toml"
    --use "Glench/Vim-Jinja2-Syntax"

    --use "ziglang/zig.vim"

    ---- Can add back if we ever use it.
    ---- use 'JuliaEditorSupport/julia-vim'

    --use { "iamcco/markdown-preview.nvim", run = "cd app && yarn install" }

    ---- Typescript {{{
    ---- TODO: Should probably only load these when necessary.
    ---- TODO: Should prboably check if these work for typescript, typescript.tsx, etc.
    --use "jelera/vim-javascript-syntax"
    --use "othree/javascript-libraries-syntax.vim"
    --use "leafgarland/typescript-vim"
    --use "peitalin/vim-jsx-typescript"

    ---- Wonder if I can make LSP do this and respect .prettier files.
    ----  I don't write enough typescript to think about this.
    --use { "prettier/vim-prettier", run = "yarn install" }

    ---- TODO: Turn emmet back on when I someday use it
    ---- use 'mattn/emmet-vim'

    --use { "vim-scripts/JavaScript-Indent", ft = "javascript" }
    --use { "pangloss/vim-javascript", ft = { "javascript", "html" } }
    --use "tpope/vim-liquid"
    ---- }}}
    ---- Godot {{{
    --use "habamax/vim-godot"
    ---- }}}
    ---- Lisp {{{
    ---- use { 'eraserhd/parinfer-rust', run = 'cargo build --release' }
    ---- }}}
    ----  }}}
    ---- LSP {{{

    ---- STREAM: Figure out how to use snippets better
    ---- use 'haorenW1025/completion-nvim'
    --use "hrsh7th/nvim-compe"

    ---- Completion stuff
    --local_use "rofl.nvim"

    ---- use "hrsh7th/vim-vsnip"
    ---- use "hrsh7th/vim-vsnip-integ"
    ---- use 'norcalli/snippets.nvim'
    --use {
    --  "L3MON4D3/LuaSnip",

    --  config = function()
    --    vim.g.snippets = "luasnip"
    --  end,
    --}

    ---- Cool tags based viewer
    ----   :Vista  <-- Opens up a really cool sidebar with info about file.
    --use "liuchengxu/vista.vim"

    ---- Find and replace
    --use {
    --  "brooth/far.vim",

    --  cond = function()
    --    return vim.fn.has "python3" == 1
    --  end,
    --}

    ---- Debug adapter protocol
    ----   Have not yet checked this out, but looks awesome.
    ---- use 'puremourning/vimspector'
    --use "mfussenegger/nvim-dap"
    --use "theHamsta/nvim-dap-virtual-text"
    --use "mfussenegger/nvim-dap-python"
    --use "nvim-telescope/telescope-dap.nvim"

    --use "jbyuki/one-small-step-for-vimkind"

    --if has "python3" then
    --  use {
    --    "rcarriga/vim-ultest",

    --    requires = { "vim-test/vim-test" },
    --    run = ":UpdateRemotePlugins",
    --    cond = function()
    --      return vim.fn.has "python3" == 1
    --    end,
    --    config = function()
    --      vim.cmd [[nmap ]t <Plug>(ultest-next-fail)]]
    --      vim.cmd [[nmap [t <Plug>(ultest-prev-fail)]]
    --    end,
    --  }

    --  use "alfredodeza/pytest.vim"
    --end

    --if false and has "python3" then
    --  use "puremourning/vimspector"
    --end
    ---- }}}

    -- -- TREE SITTER: {{{
    -- use "nvim-treesitter/nvim-treesitter"
    -- use "nvim-treesitter/nvim-treesitter-textobjects"
    -- use "nvim-treesitter/playground"
    -- use "vigoux/architext.nvim"

    -- use "JoosepAlviste/nvim-ts-context-commentstring"

    -- -- Grammars
    -- local_use "tree-sitter-lua"
    -- local_use "tree-sitter-sql"

    ---- }}}
    ---- NAVIGATION: {{{
    ---- STREAM: Show off edit_alternate.vim
    --use "tjdevries/edit_alternate.vim"

    --use "google/vim-searchindex"

    ---- use 'justinmk/vim-dirvish'
    --use "tamago324/lir.nvim"

    --use "pechorin/any-jump.vim"

    ---- Temporary disabled... getting real bad performance in some lua files.
    ----  Might just disable for Lua only?...
    ---- use 'andymass/vim-matchup'

    ---- }}}
    ---- TEXT MANIUPLATION {{{
    --use "godlygeek/tabular" -- Quickly align text by pattern
    --use "tpope/vim-commentary" -- Easily comment out lines or objects
    --use "tpope/vim-repeat" -- Repeat actions better
    --use "tpope/vim-abolish" -- Cool things with words!
    --use "tpope/vim-characterize"
    --use "tpope/vim-dispatch"
    --use "AndrewRadev/splitjoin.vim"
    ---- use 'AndrewRadev/sideways.vim' -- Easy sideways movement

    ---- TODO: Check out macvhakann/vim-sandwich at some point
    --use "tpope/vim-surround" -- Surround text objects easily

    ---- Do I even use any of these?
    --use "kana/vim-textobj-user"
    --use "bps/vim-textobj-python"
    ---- }}}
    ---- Python: {{{

    ---- }}}
    ---- GIT: {{{
    ---- gita replacement
    ---- use 'lambdalisue/gina.vim'
    --use "TimUntersberger/neogit"

    ---- Github integration
    --if vim.fn.executable "gh" == 1 then
    --  use "pwntester/octo.nvim"
    --end
    --use "ruifm/gitlinker.nvim"

    ---- Sweet message committer
    --use "rhysd/committia.vim"

    ---- Floating windows are awesome :)
    --use "rhysd/git-messenger.vim"

    ---- Async signs!
    --if has "nvim-0.5" then
    --  use "lewis6991/gitsigns.nvim"
    --end

    ---- }}}

    ---- use 'untitled-ai/jupyter_ascending.vim'

    --use "tjdevries/standard.vim"
    --use "tjdevries/conf.vim"
    --use "junegunn/vader.vim"

    --use { "junegunn/fzf", run = "./install --all" } -- Fuzzy Searcher
    --use { "junegunn/fzf.vim" }
    ---- use {'yuki-ycino/fzf-preview.vim', run = 'yarn global add' }
    ---- use {'yuki-ycino/fzf-preview.vim', run = 'npm install' }

    --use "lervag/wiki.vim"
    --use "ihsanturk/neuron.vim"

    ---- use 'ThePrimeagen/vim-apm'
    ---- use 'ThePrimeagen/vim-be-good'

    --use "alec-gibson/nvim-tetris"

    ---- WIP:
    --local_use "py_package.nvim"

    ---- TODO: Figure out why this randomly popups
    ----       Figure out if I want to use it later as well :)
    ---- use {
    ----   'folke/which-key.nvim',
    ----   config = function()
    ----     -- TODO: Consider changing my timeoutlen?
    ----     require('which-key').setup {
    ----       presets = {
    ----         g = true,
    ----       },
    ----     }
    ----   end,
    ---- }

    ---- It would be fun to think about making a wiki again...
    ---- local_use 'wander.nvim'
    ---- local_use 'riki.nvim'

    ---- pretty sure I'm done w/ these
    ---- local_use 'vlog.nvim'
    ----
  end,
  config = {
    display = {
      -- open_fn = require('packer.util').float,
    },
  },
}

--[[ Replacements Needed
" Plug 'https://github.com/AndrewRadev/linediff.vim'
" Plug 'https://github.com/AndrewRadev/switch.vim'

Plu 'plasticboy/vim-markdown', { 'for': 'markdown' }
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = [
\ 'python=python',
\ 'json=json',
\ ]

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

-- Should get a test helper.
Plug 'alfredodeza/pytest.vim'

-- completes issue names in commit messages
Plug 'tpope/vim-rhubarb'

-- Create menus easily.
Plug 'skywind3000/quickmenu.vim'

-- Indentation guides
Plug 'nathanaelkane/vim-indent-guides'                       " See indentation guides

--]]
