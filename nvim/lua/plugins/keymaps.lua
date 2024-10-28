local wk = require("which-key")
local builtin = require('telescope.builtin')
wk.add({
  { ";", ":", desc = "CMD enter command mode", mode = "n"},
  { "jk", "<ESC>", mode = "i" , desc = "Escape" },
  { "wq", "ZZ", mode = "n", desc = "write/quit" },
  { "qq", "ZQ", mode = "n", desc = "quit/all" },
  { "ff", builtin.find_files, desc = "Telescope find files" },
  { "fg", builtin.live_grep, desc = "Telescope live grep" },
  { "fb", builtin.buffers, desc = "Telescope buffers" },
  { "fh", builtin.help_tags,  desc = "Telescope help tags" },
  { "tt", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
  { "ttb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Trouble buffer diagnostics" },
})

