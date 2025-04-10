return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { 'williamboman/mason.nvim', opts = {} },
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
  
        -- Useful status updates for LSP.
        { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "clangd", "pyright", "rust_analyzer" },
        })
    end,
}