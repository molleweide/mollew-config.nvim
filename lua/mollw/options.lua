-- This will be available for everyone when I merge:
--  https://github.com/neovim/neovim/pull/13479
-- Until then, you can check out `./lua/tj/globals/opt.lua
local opt = vim.opt


vim.cmd [[
    rshada!
    doautocmd BufRead
    syntax on
    filetype on
    filetype plugin indent on
    " PackerLoad nvim-treesitter
]]


-- ================ general config ====================

opt.path = opt.path + { "**" }

opt.backspace="indent,eol,start"  -- allow backspace in insert mode
opt.history=1000                -- store lots of :cmdline history
opt.gcr="a:blinkon0"              -- disable cursor blink
opt.visualbell=true             -- no sounds
opt.autoread=true               -- reload files changed outside vim
opt.ruler=true                  -- show ruler
opt.undolevels=1000             -- undo levels
opt.laststatus=2                -- fix status bar
opt.guifont="Inconsolata-g for Powerline"

opt.wildmenu = true

-- stop kicking me into this mode you fucking apes
-- opt.noexrc=true
-- opt.noex=true
-- opt.nosecure=true

-- minimum width
opt.winwidth=100

-- opt.noswapfile=true
-- opt.nobackup=true
-- opt.nowb=true

-- opt.nowrap=true
-- opt.linebreak=true


-- ================ Indentation ======================

opt.autoindent=true
opt.smartindent=true
opt.smarttab=true
opt.shiftwidth=2
opt.softtabstop=2
opt.tabstop=2
opt.expandtab=true

-- ================ Scrolling ========================

opt.scrolloff=4         -- Start scrolling when we're 4 lines away from margins
opt.sidescrolloff=15
opt.sidescroll=1

-- =============== mouse =====================

opt.mouse= "n"

-- ================ Editing ==========================

-- color column
-- opt.colorcolumn=81

opt.splitright=true
opt.splitbelow=true

--

-- opt.nowrap=true       -- Don't wrap lines
-- opt.linebreak=true    -- Wrap lines at convenient points

-- tj below..


-- Ignore compiled files
opt.wildignore = "__pycache__"
opt.wildignore = opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*" }
opt.wildignore = opt.wildignore + { "node_modules/*", "bower_components/*", "vendor/bundle/*", "tmp/*" }


opt.wildmode = { "longest", "list", "full" }

-- Cool floating window popup menu for completion on command line
opt.pumblend = 17

opt.wildmode = opt.wildmode - "list"
opt.wildmode = opt.wildmode + { "longest", "full" }

opt.wildoptions = "pum"

opt.showmode = false
opt.showcmd = true
opt.cmdheight = 1 -- Height of the command bar
opt.incsearch = true -- Makes search act like search in modern browsers
opt.showmatch = true -- show matching brackets when text indicator is over them
opt.relativenumber = true -- Show line numbers
opt.number = true -- But show the actual number for the line we're on
opt.ignorecase = true -- Ignore case when searching...
opt.smartcase = true -- ... unless there is a capital letter in the query
opt.hidden = true -- I like having buffers stay around
opt.cursorline = true -- Highlight the current line
opt.equalalways = false -- I don't like my windows changing all the time
opt.splitright = true -- Prefer windows splitting to the right
opt.splitbelow = true -- Prefer windows splitting to the bottom
opt.updatetime = 1000 -- Make updates happen faster
opt.hlsearch = true -- I wouldn't use this without my DoNoHL function
opt.scrolloff = 10 -- Make it so there are always ten lines below my cursor

-- Tabs
opt.autoindent = true
opt.cindent = true
opt.wrap = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.breakindent = true
opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
opt.linebreak = true

opt.foldmethod = "indent"
-- opt.foldlevel = 0
opt.modelines = 1

opt.belloff = "all" -- Just turn the dang bell off

opt.clipboard = "unnamedplus"

opt.inccommand = "split"
opt.swapfile = false -- Living on the edge
opt.shada = { "!", "'1000", "<50", "s10", "h" }

opt.mouse = "n"

-- Helpful related items:
--   1. :center, :left, :right
--   2. gw{motion} - Put cursor back after formatting motion.
--
-- TODO: w, {v, b, l}
opt.formatoptions = opt.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore

-- set joinspaces
opt.joinspaces = false -- Two spaces and grade school, we're done

-- set fillchars=eob:~
opt.fillchars = { eob = "~" }
