return {
  {
    "williamboman/mason.nvim",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
      "MasonUpdate", -- AstroNvim extension here as well
      "MasonUpdateAll", -- AstroNvim specific
    },
    opts = {
     ui = {
        icons = {
          package_installed = "✓",
          package_uninstalled = "✗",
          package_pending = "⟳",
        },
      },
     ensure_installed = {
        "gopls", 
        "golangci-lint",
        "go-debug-adapter",
        "gofumpt",
        "golangci-lint-langserver",
        "gci",
        "goimports",
        "gomodifytags",
      },
    },
    build = ":MasonUpdate",
    config = require "plugins.configs.mason",
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end
  },
 {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {},
  }
}
 
