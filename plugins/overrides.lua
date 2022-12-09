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

M.alpha = {
  header = {
    type = "text",
    val = {
      "░█████╗░██████╗░██╗░██████╗",
      "██╔══██╗██╔══██╗██║██╔════╝",
      "███████║██████╔╝██║╚█████╗░",
      "██╔══██║██╔══██╗██║░╚═══██╗",
      "██║░░██║██║░░██║██║██████╔╝",
      "╚═╝░░╚═╝╚═╝░░╚═╝╚═╝╚═════╝░",
      -- " █████╗ ██████╗ ██╗███████╗",
      -- "██╔══██╗██╔══██╗██║██╔════╝",
      -- "███████║██████╔╝██║███████╗",
      -- "██╔══██║██╔══██╗██║╚════██║",
      -- "██║  ██║██║  ██║██║███████║",
      -- "╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚══════╝",
    },
    opts = {
      position = "center",
      hl = "AlphaHeader",
    },
  },
}

M.dapui = {
  icons = {
    expanded = "▾",
    collapsed = "▸",
  },
  mappings = {
    expand = { "o", "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  sidebar = {
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      },
      { id = "breakpoints", size = 0.25 },
      { id = "stacks", size = 0.25 },
      { id = "watches", size = 00.25 },
    },
    size = 40,
    position = "left", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "repl" },
    size = 10,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
  },
}

M.nvim_dap_virtual_text = {
  enabled = true,
  enable_commands = true,
  highlight_changed_variables = true,
  highlight_new_as_changed = false,
  show_stop_reason = true,
  commented = false,
  only_first_definition = true,
  all_references = false,
  filter_references_pattern = '<module',
  virt_text_pos = 'eol',
  all_frames = false,
  virt_lines = false,
  virt_text_win_col = nil
}

M.dap = {

}

return M
