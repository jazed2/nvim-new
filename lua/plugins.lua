vim.pack.add({
  { src = "https://github.com/kdheepak/monochrome.nvim" },

  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"},
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
  { src = "https://github.com/saghen/blink.cmp",        version = vim.version.range("^1") },
  { src = "https://github.com/L3MON4D3/LuaSnip" },
  { src = "https://github.com/rafamadriz/friendly-snippets" },

  { src = "https://github.com/stevearc/oil.nvim"},
  { src = "https://github.com/alexghergh/nvim-tmux-navigation"},
  { src = "https://github.com/chrishrb/gx.nvim"},
  { src = "https://github.com/otavioschwanck/arrow.nvim"},

  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/folke/todo-comments.nvim"},
  { src = "https://github.com/NMAC427/guess-indent.nvim"},
  { src = "https://github.com/mbbill/undotree"},
  { src = "https://github.com/nvim-mini/mini.nvim", version = flase },
  { src = "https://github.com/folke/which-key.nvim"},
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

require("plugins.colorschemes")
require("plugins.oil")
require("plugins.movement")
require("plugins.lsp")
require("plugins.mini")
require("plugins.utils")

