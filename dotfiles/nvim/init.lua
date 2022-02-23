require('plugins')
require('settings')
require('mappings')

--Plugin configs and launch
require('nvim-tree-config')
require('treesitter-config')
require('lsp')
require'alpha'.setup(require'alpha.themes.startify'.opts)
require('cmp-config')
require("bufferline").setup{}
require('lualine').setup()
