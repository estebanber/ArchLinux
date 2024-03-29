local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- Color Schemas
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'sainnhe/sonokai'
Plug 'lifepillar/vim-solarized8'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'ajmwagar/vim-deus'
Plug('sonph/onehalf',{rtp = 'vim'})
Plug 'lifepillar/vim-gruvbox8'

-- GUI

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'    -- File finder
Plug ('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug 'jedrzejboczar/possession.nvim'    -- Session managment
Plug 'kyazdani42/nvim-web-devicons'     -- Icons
Plug 'kyazdani42/nvim-tree.lua'         -- File tree
Plug 'goolord/alpha-nvim'               -- Greeter (and more)
Plug 'akinsho/bufferline.nvim'          -- Opened buffers
Plug 'nvim-lualine/lualine.nvim'        -- Status bar
--Plug 'psliwka/vim-smoothie'             -- Smooth scroll
Plug 'karb94/neoscroll.nvim'            -- Smooth scroll
Plug 'stevearc/aerial.nvim'             -- Symbols map
Plug 'lukas-reineke/indent-blankline.nvim' -- Code block lines

-- Language servers
Plug 'neovim/nvim-lspconfig'            -- Required
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- Advanced syntax hilight

-- Code auto-completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

-- GIT
Plug 'mhinz/vim-signify'

vim.call('plug#end')
