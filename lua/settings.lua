--Set highlight on search
vim.o.hlsearch = false

--Make line numbers default
vim.wo.number = true

-- Make highlight parenthesis
vim.o.showmatch = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable system clipboard
vim.o.clipboard = 'unnamedplus'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Set split to the right / bellow
vim.o.lazyredraw = true
vim.o.splitright = true
vim.o.splitbelow = true

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

-- Remove whitespace on save
vim.cmd [[au BufWritePre * :%s/\s\+$//e]]

-- Fast saving
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<leader>w', '<C-c>:w<CR>', {noremap = true, silent = true})
