vim.g.have_nerd_font = true
vim.opt.number = true
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.confirm = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

require("config.lazy")
require("plugins.init")
-- require("plugins.keymaps")

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 0
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.wrap = true
vim.o.cursorline = true
vim.o.termguicolors = true

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

local wk = require("which-key")
local builtin = require('telescope.builtin')
local harpoon = require('harpoon')

harpoon:setup({})

wk.add({
{ ";", ":", desc = "CMD enter command mode", mode = "n"},
{ "<leader><leader>", ":", desc = "CMD enter command mode", mode = "n"},
{ " ", "<leader>", mode = "n" },
{ " ", "<leader>", mode = "v" },
{ " ", "<leader>", mode = "x" },
{ "<leader>ee", "<esc>", mode = "i", desc = "esc" },
{ "<leader>ee", "<esc>", mode = "v", desc = "esc" },
{ "<leader>ee", "<esc>", mode = "x", desc = "esc" },
{ "<leader>ww", ":w", mode = "n", desc = "write" },
{ "<leader>wq", "ZZ", mode = "n", desc = "write/quit" },
{ "<leader>qq", "ZQ", mode = "n", desc = "quit/all" },
{ "<leader>ff", builtin.find_files, mode = "n", desc = "Telescope find files" },
{ "<leader>fg", builtin.live_grep, mode = "n", desc = "Telescope live grep" },
{ "<leader>fb", builtin.buffers, mode = "n", desc = "Telescope buffers" },
{ "<leader>fh", builtin.help_tags, mode = "n", desc = "Telescope help tags" },
{ "<leader>dd", "<cmd>Trouble diagnostics toggle<cr>", mode = "n", desc = "Diagnostics (Trouble)" },
{ "<leader>db", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", mode = "n", desc = "Trouble buffer diagnostics" },
{ "<leader>rq", ":norm! @r", mode = "n", desc = "Reuse macro in slot r" },
{ "<leader>l", "10l", mode = "n" },
{ "<leader>k", "<C-u>zz", mode = "n" },
{ "<leader>j", "<C-d>zz", mode = "n" },
{ "<leader>h", "10h", mode = "n" },
{ "<leader>c", "<cmd>Copilot<cr>", mode = "n", desc = "Copilot line suggestions" },
{ "<leader>a", "<cmd>CopilotChatToggle<cr>", mode = "n", desc = "Copilot chat" },
{ "p", '"_dp"', mode = "v", desc = "remember yank" },
{ "<leader>mm", "<cmd>silent !tmux neww tmux-sessionizer<CR>", mode = "n" },
{ "<leader>tt", "<cmd>tabnew<CR>", mode = "n" },
{ "<leader>tc", "<cmd>tabclose<CR>", mode = "n" },
{ "<leader>tk", "<cmd>tabn<CR>", mode = "n" },
{ "<leader>tj", "<cmd>tabp<CR>", mode = "n" },
{ "<leader>ti", "<cmd>tabnew %<CR>", mode = "n" },
{ "<leader>ac", vim.g.toggle_cmp, mode = "n", desc = "Toggle autocomplete" },
{ "<leader>ha", function() harpoon:list():add() end, desc = "harpoon add", mode = "n" },
{ "<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon menu", mode = "n" },
{ "<leader>h1", function() harpoon:list():select(1) end, desc = "harpoon option 1", mode = "n" },
{ "<leader>h2", function() harpoon:list():select(2) end, desc = "harpoon option 2", mode = "n" },
{ "<leader>h3", function() harpoon:list():select(3) end, desc = "harpoon option 3", mode = "n" },
{ "<leader>h4", function() harpoon:list():select(4) end, desc = "harpoon option 4", mode = "n" },
{ "<leader>hk", function() harpoon:list():next() end, desc = "harpoon next option", mode = "n" },
{ "<leader>hj", function() harpoon:list():prev() end, desc = "harpoon prev option", mode = "n" },
})
