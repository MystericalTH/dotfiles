-- lua/plugins/lspconfig.lua
return {
  -- Enable LSP for Go using gopls
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {},
        svelte = {},
        cssls = {},
        html = {},
        lua_ls = {},
        phpactor = {},
        pyright = {},
        tailwindcss = {},
      },
    },
  },
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "go",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  { "leafOfTree/vim-svelte-plugin" },
}
