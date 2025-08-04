 -- Leader key setup
vim.g.mapleader = ' '

-- Function to execute VSCode command
local function vscode_command(command)
  vim.fn.VSCodeNotify(command)
end

-- Terminal Toggle with improved functionality
vim.keymap.set('n', '<leader>t', function()
  -- Open the terminal if it's not already open
  vscode_command('workbench.action.terminal.toggleTerminal')
  -- Focus on the terminal to ensure it's in the foreground
  vscode_command('workbench.action.terminal.focus')
end, { noremap = true, silent = true })

-- Quick access to config and save
vim.keymap.set('n', '<leader>c', ':e C:/nvim/config/init.lua<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>s', ':w<CR>', { noremap = true, silent = true })

-- Enhanced visual mode mappings
vim.keymap.set('v', 'p', 'P', { noremap = true }) -- Paste without overwriting register
vim.keymap.set('v', 'U', '<C-r>', { noremap = true }) -- Redo in visual mode

-- Clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Split navigation and management
vim.keymap.set('n', '<leader><Left>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><Right>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><Up>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><Down>', '<C-w>j', { noremap = true, silent = true })

-- Split window management
vim.keymap.set('n', '<leader>q', ':close<CR>', { noremap = true, silent = true }) -- Close current split
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true }) -- Vertical split
vim.keymap.set('n', '<leader>h', ':split<CR>', { noremap = true, silent = true }) -- Horizontal split

-- Buffer navigation
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })

-- Improved search and case sensitivity
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- System clipboard sync
vim.opt.clipboard = 'unnamedplus'

-- Line numbers and relative numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Additional VSCode-specific commands
-- Open Command Palette
vim.keymap.set('n', '<leader>p', function()
  vscode_command('workbench.action.showCommands')
end, { noremap = true, silent = true })

-- Quick file search
vim.keymap.set('n', '<leader>f', function()
  vscode_command('workbench.action.quickOpen')
end, { noremap = true, silent = true })

-- Toggle Sidebar
vim.keymap.set('n', '<leader>b', function()
  vscode_command('workbench.action.toggleSidebarVisibility')
end, { noremap = true, silent = true })

-- Comment/Uncomment lines
vim.keymap.set('n', '<leader>/', function()
  vscode_command('editor.action.commentLine')
end, { noremap = true, silent = true })
vim.keymap.set('v', '<leader>/', function()
  vscode_command('editor.action.commentLine')
end, { noremap = true, silent = true })
-- File Explorer Toggle
vim.keymap.set('n', '<leader>e', function()
  vscode_command('workbench.action.toggleSidebarVisibility')
end, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>E', function()
  vscode_command('workbench.view.explorer')
end, { noremap = true, silent = true })

-- Extension Management
vim.keymap.set('n', '<leader>x', function()
  vscode_command('workbench.view.extensions')
end, { noremap = true, silent = true })

-- Git SCM
vim.keymap.set('n', '<leader>g', function()
  vscode_command('workbench.view.scm')
end, { noremap = true, silent = true })
