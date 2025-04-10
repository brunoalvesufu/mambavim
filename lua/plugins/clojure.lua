return {
  -- Better Navigation
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "clojure" },
    },
  },

  -- Structural editing support
  {
    "guns/vim-sexp",
    ft = { "clojure" },
    dependencies = {
      "tpope/vim-sexp-mappings-for-regular-people",
    },
  },

  -- Configure LSP with formatting
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clojure_lsp = {
          -- Enable formatting
          on_attach = function(client, bufnr)
            -- Enable format on save
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end,
        },
      },
    },
  },
  
  -- Rainbow Parentheses
  {
    "HiPhish/rainbow-delimiters.nvim",
    ft = { "clojure" },
  },
  
  -- Git integration
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
}
