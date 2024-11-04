
local wk = require("which-key")
local builtin = require('telescope.builtin')
wk.add({
  { ";", ":", desc = "CMD enter command mode", mode = "n"},
  { " ", "<leader>", mode = "n" },
  { "<leader>jk", "<esc>", mode = "i", desc = "esc" },
  { "<leader>jk", "<esc>", mode = "v", desc = "" },
  { "<leader>wq", "ZZ", mode = "n", desc = "write/quit" },
  { "<leader>qq", "ZQ", mode = "n", desc = "quit/all" },
  { "<leader>ff", builtin.find_files, mode = "n", desc = "Telescope find files" },
  { "<leader>fg", builtin.live_grep, mode = "n", desc = "Telescope live grep" },
  { "<leader>fb", builtin.buffers, mode = "n", desc = "Telescope buffers" },
  { "<leader>fh", builtin.help_tags, mode = "n", desc = "Telescope help tags" },
  { "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", mode = "n", desc = "Diagnostics (Trouble)" },
  { "<leader>tb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", mode = "n", desc = "Trouble buffer diagnostics" },
  { "<leader>rq", ":norm! @r", mode = "n", desc = "Reuse macro in slot r" },
  { "<leader>l", "l10", mode = "n" },
  { "<leader>k", "k10", mode = "n" },
  { "<leader>j", "j10", mode = "n" },
  { "<leader>h", "h10", mode = "n" },
  { "<leader>c", "<cmd>Copilot<cr>", mode = "n", desc = "Copilot line suggestions" },
  { "<leader>a", "<cmd>CopilotChatToggle<cr>", mode = "n", desc = "Copilot chat" },
})

