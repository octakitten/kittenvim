return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
},

{
    "hrsh7th/nvim-cmp",
},

{
    "zbirenbaum/copilot.lua",
},

{
    "CopilotC-Nvim/CopilotChat.nvim",
},

{
    "nvim-telescope/telescope.nvim",
},

{
    "folke/which-key.nvim",
},

{
    "nvim-tree/nvim-web-devicons",
},

{
    "lewis6991/gitsigns.nvim",
},

{
    "nvim-lualine/lualine.nvim",
},

{
    "lukas-reineke/indent-blankline.nvim",
},

{
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
},

{
  "numToStr/Comment.nvim",
},

{
    "stevearc/conform.nvim",
},

{
  "folke/todo-comments.nvim",
},

{
    "rcarriga/nvim-dap-ui",
},

{
    "catppuccin/nvim",
},

{
  "sindrets/diffview.nvim",
},

{
  "nvim-neo-tree/neo-tree.nvim",
},

require("keymaps")
