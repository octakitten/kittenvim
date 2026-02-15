return {
{
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = 'main',
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "c", "cpp", "python", "js", "html", "css",
        "nix", "java", "rust", "ts", "cuda", "bash", "gnumake",
      },
      ignore_install = { "ipkg" },

    },
},

{
    "nvim-tree/nvim-web-devicons",
},

{
  "nacro90/numb.nvim",
},

{
  "nvim-neotest/neotest",
},

{
  "iamcco/markdown-preview.nvim",
},

{
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" }
},

{
  'f-person/git-blame.nvim',
},

{
  'sindrets/diffview.nvim',
},

{
    "numToStr/Comment.nvim",
    opts = {
        -- add any options here
    },
    lazy = false,
},

{
    'tpope/vim-sleuth',
},

{
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = 'org',
    config = function()
        require('orgmode').setup({
            org_agenda_files = {'~/org/*'},
            org_default_notes_file = '~/org/notes.org',
            org_hide_leading_stars = true,
            org_indent_mode = 'noindent',
            org_todo_keywords = {'TODO', 'DOING', 'BLOCKED', 'DONE'},
            org_todo_keyword_faces = {
                DOING = 'font-weight:bold',
                BLOCKED = 'font-weight:bold',
            },
            org_agenda_templates = {
                T = {
                    description = 'Task',
                    template = '* TODO %?\n  %U',
                },
                n = {
                    description = 'Note',
                    template = '* %?\n  %U',
                },
            },
        })
    end,
},

{
    "hrsh7th/nvim-cmp",
    	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"saadparwaiz1/cmp_luasnip",
	},
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
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.3", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
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
    "MunifTanjim/nui.nvim",
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
},

{
	"nvim-lua/plenary.nvim",
}

}
