local M = {}

M.treesitter = {
  ensure_installed = {
    -- static language
    "c",
    "go",
    "cpp",
    "rust",

    -- dynamic language
    "lua",
    "python",

    -- test language
    "vim",
    "sql",
    "bash",
    "make",
    "http",
    "html",
    "json",
    "toml",
    "yaml",
    "cmake",
    "meson",
    "gomod",
    "ninja",
    "regex",
    "markdown",
    "dockerfile",
  },
}

M.mason = {
  ensure_installed = {
    -- text language server
    "sqls",
    "marksman",
    "html-lsp",
    "json-lsp",
    "yaml-language-server",
    "cmake-language-server",
    "golangci-lint-langserver",
    "dockerfile-language-server",

    -- static language server
    "gopls",
    "clangd",
    "gotests",
    "rust-analyzer",

    -- dynamic language server
    "python-lsp-server",
    "lua-language-server",
    "bash-language-server",

    -- lint and check
    "cpplint",
    "luacheck",
    "yamllint",
    "golangci-lint",

    -- language formatter
    "yamlfmt",
    "luaformatter",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
