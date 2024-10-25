local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
	    { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
	    { out, "WarningMsg" },
	    { "\nPress any key to exit..." },
        }, true, {})
	vim.fn.getchar()
	os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    install = { colorscheme = { "catppuccin" } },
    checker = { enabled = true },
    "neovim/nvim-lspconfig",
})

require("mason").setup()

local lspconfig = require("lspconfig")
lspconfig.pyright.setup {}
lspconfig.bashls.setup {}
lspconfig.ccls.setup {}
lspconfig.dockerls.setup {}
lspconfig.java_language_server.setup {}
lspconfig.lua_ls.setup {}
lspconfig.markdown_oxide.setup {}
lspconfig.nixd.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.sqlls.setup {}
lspconfig.ts_ls.setup {}
lspconfig.vscode_langservers_extracted.setup {}
lspconfig.matlab_language_server.setup {}
lspconfig.prettier.setup {}
lspconfig.yaml_language_server.setup {}
lspconfig.xmlformatter.setup {}
