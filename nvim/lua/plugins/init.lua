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
        require('nvim-treesitter.configs').setup({
            ensure_installed = 'all',
            ignore_install = { 'org' },
        })
    end,
},
--[[
{
    "hrsh7th/nvim-cmp",
    	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	{ "saadparwaiz1/cmp_luasnip",
		opts = {
			sources.name = "snippets" }
		},
	},
	opts = function()
    vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
    local cmp = require("cmp")
    local defaults = require("cmp.config.default")()
    local auto_select = true
    return {
      auto_brackets = {}, -- configure any filetype to auto add brackets
      completion = {
        completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
      },
      preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = LazyVim.cmp.confirm({ select = auto_select }),
        ["<C-y>"] = LazyVim.cmp.confirm({ select = true }),
        ["<S-CR>"] = LazyVim.cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<C-CR>"] = function(fallback)
          cmp.abort()
          fallback()
        end,
        ["<tab>"] = function(fallback)
          return LazyVim.cmp.map({ "snippet_forward", "ai_accept" }, fallback)()
        end,
      }),
      sources = cmp.config.sources({
        { name = "lazydev" },
        { name = "nvim_lsp" },
        { name = "path" },
      }, {
        { name = "buffer" },
      }),
      formatting = {
        format = function(entry, item)
          local icons = LazyVim.config.icons.kinds
          if icons[item.kind] then
            item.kind = icons[item.kind] .. item.kind
          end

          local widths = {
            abbr = vim.g.cmp_widths and vim.g.cmp_widths.abbr or 40,
            menu = vim.g.cmp_widths and vim.g.cmp_widths.menu or 30,
          }

          for key, width in pairs(widths) do
            if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
              item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
            end
          end

          return item
        end,
      },
      experimental = {
        -- only show ghost text when we show ai completions
        ghost_text = vim.g.ai_cmp and {
          hl_group = "CmpGhostText",
        } or false,
      },
      sorting = defaults.sorting,
    }
  end,
  main = "lazyvim.util.cmp",
  }
},
--]]
--[[
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
--]]
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
