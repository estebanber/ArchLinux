HOME = os.getenv("HOME")

-- vim.g  --> global variables
-- vim.o  --> global options
-- vim.wo --> windows options
-- vim.bo --> buffer options

-- Color scheme
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.cmd('colorscheme ayu')  -- Other options: gruvbox8
vim.cmd('set noshowmode')    -- Don't show mode because it is in the status line
vim.cmd('set undofile')
-- Leader key
vim.g.mapleader = ','
-- New splits to the right an below the current one
vim.o.splitbelow = true
vim.o.splitright = true

-- Misc sttings
vim.o.cursorline = true    -- Highlight the current line
vim.o.number = true        -- Show line numbers
vim.o.ignorecase = true    -- Case insensitive searchs
vim.o.smartcase = true     -- If the search have a capital letter the search becomes case sensitive
vim.wo.colorcolumn = "120" -- Line that points 120 characters
vim.wo.relativenumber = true
vim.wo.number = true
vim.api.nvim_exec(
[[
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END
]],
  false
)
vim.o.scrolloff = 3
vim.o.mouse = 'a'

-- Indent
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.expandtab = true      --Tab to spaces

vim.o.guifont = "JetBrainsMono Nerd Font:h8"

vim.api.nvim_exec(
[[
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
]],
  false
)
vim.api.nvim_exec(
[[
:highlight CursorLine ctermbg=red guibg=#353A3E
:highlight CursorColumn ctermbg=red guibg=#353A3E
]],
  false
)
