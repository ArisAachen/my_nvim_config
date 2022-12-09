local overrides = require "custom.plugins.overrides"

return {

  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  }, -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["mfussenegger/nvim-dap"] = {
    config = function()
      require "custom.plugins.nvimdap"
    end,
    -- override_options = overrides.dap,
  },

  ["rcarriga/nvim-dap-ui"] = {
    override_options = overrides.dapui,
  },

  ["theHamsta/nvim-dap-virtual-text"] = {
    overrides = overrides.nvim_dap_virtual_text
  }

  -- ["sakhnik/nvim-gdb"] = {},
  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
