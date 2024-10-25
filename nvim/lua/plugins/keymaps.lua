local wk = require("which-key")
wk.add({
  { ";", ":", desc = "CMD enter command mode", mode = "n"},
  { "jk", "<ESC>", mode = "i" , desc = "Escape" },
  { "wq", "<cmd> wq", mode = "n", desc = "write/quit" },
  { "qq", "ZQ", mode = "n", desc = "quit/all" },
})
