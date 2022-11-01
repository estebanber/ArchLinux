require('plugins')
require('settings')
require('mappings')

--Plugin configs and launch

require('possession').setup {
    commands = {
        save = 'SSave',
        load = 'SLoad',
        delete = 'SDelete',
        list = 'SList',
    }
}

require('nvim-tree-config')
require('treesitter-config')
require('alpha').setup(require('alpha-config'))
require('cmp-config')
require("bufferline").setup{}
require('lualine').setup()
require('aerial').setup({})
require('neoscroll').setup()
require('telescope').setup()
require("indent_blankline").setup()

