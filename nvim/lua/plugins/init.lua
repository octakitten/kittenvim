return {
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "c", "cpp", "python", "js", "html", "css",
        "nix", "java", "rust", "ts", "bend", "cuda", "bash", "gnumake",
      },
    },
},

{
    "hrsh7th/nvim-cmp",
},

{
    "github/copilot.vim",
},

{
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
        { "github/copilot.vim" },
        { "nvim-lua/plenary.nvim" },
    },
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
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
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
    lazy = false,
    priority = 1000,
    config = function()
	vim.cmd([[colorscheme catppuccin-mocha]])
    end,
},

{
  "sindrets/diffview.nvim",
},

{
  "nvim-neo-tree/neo-tree.nvim",
},

{
    --"github/copilot.vim",
},

{
    --"CopilotC-Nvim/CopilotChat.nvim",
},

{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
--    lspconfig = require "nvim-lspconfig",
--    servers = {
--        "bashls", "ccls", "csharp_ls", "dockerls", "java_language_server",
--        "lua_ls", "markdown_oxide", "nixd", "pyright", "rust_analyzer", "sqlls",
--        "ts_ls", "vscode-langservers-extracted", "matlab-language-server",
--        "prettier", "sql-formatter", "yaml-language-server", "xmlformatter"
--    },
}

}
