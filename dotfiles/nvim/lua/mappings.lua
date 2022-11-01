-- Helper function to simplify the mappings
local function map(mode, shortcut, command, opts)
  local options = { noremap = true, silent = true }
  if opts then
      options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, shortcut, command, options)
end

local function nmap(shortcut, command, opts)
  map('n', shortcut, command, opts)
end

local function imap(shortcut, command)
  map('i', shortcut, command)
end

local function vmap(shortcut, command)
  map('v', shortcut, command)
end
--[[
local function cmap(shortcut, command)
  map('c', shortcut, command)
end

]]--
local function tmap(shortcut, command)
  map('t', shortcut, command)
end
-- Use leader key to acces to + register
vmap('<Leader>y', '"+y')
vmap('<Leader>d', '"+d')
vmap('<Leader>p', '"+p')
vmap('<Leader>P', '"+P')

nmap('<Leader>y', '"+y')
nmap('<Leader>d', '"+d')
nmap('<Leader>p', '"+p')
nmap('<Leader>P', '"+P')

-- Navigate in buffers
nmap('<TAB>', ':bnext<CR>')
nmap('<S-TAB>',':bprevious<CR>')
nmap('<leader>q',':bp|bd #<CR>')

-- Reselect visual block after indent/outdent
vmap('<', '<gv')
vmap('>', '>gv')

-- Keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')

-- Init search
nmap('<C-S>', ':%s/', { silent = false})

-- Nvim-tree plugin
nmap('<F2>',':NvimTreeToggle<CR>')
imap('<F2>','<Esc>:NvimTreeToggle<CR>')

-- Terminal
nmap('<Leader>t',':sp<CR>:term<CR>:resize 20N<CR> i')
tmap('<Esc>','<C-\\><C-n>:q<CR>')

-- Splits
nmap('vs',':vs<CR>')
nmap('sp',':sp<CR>')

-- Tabs
nmap('tn',':tabnew<CR>')
nmap('tk',':tabnext<CR>')
nmap('tj',':tabprev<CR>')
nmap('to',':tabo<CR>')

--Aerial
nmap('<leader>a', '<cmd>AerialToggle!<CR>')

--Telescope
nmap('<leader>ff','<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<leader>fh', '<cmd>Telescope help_tags<cr>')

--Crosshair


nmap('<leader>c', ':set cursorcolumn!<cr>')
