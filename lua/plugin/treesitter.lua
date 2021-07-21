local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/vhyrro/tree-sitter-norg",
        files = { "src/parser.c" },
        branch = "main"
    },
}

require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained",
  -- ensure_installed = { "norg", "haskell", "cpp", "c", "javascript", "markdown" },
  highlight = { enable = true },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
}
