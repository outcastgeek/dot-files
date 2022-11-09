
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
-- packer.init {
--   display = {
--     open_fn = function()
--       return require("packer.util").float { border = "rounded" }
--     end,
--   },
-- }

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here

  -- COMMON
  use {
    'wbthomason/packer.nvim', -- Have packer manage itself
    'nvim-lua/popup.nvim', -- An implementation of the Popup API from vim in Neovim
    'nvim-lua/plenary.nvim', -- Useful lua functions used ny lots of plugins
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use {
    'p00f/nvim-ts-rainbow',
    'nvim-treesitter/playground',
  }
  -- APPEARANCE
  use {
    'kyazdani42/nvim-web-devicons',
    'flazz/vim-colorschemes',
    'folke/tokyonight.nvim',
    'EdenEast/nightfox.nvim',
    'lunarvim/darkplus.nvim',
    'vim-airline/vim-airline',
    'vim-airline/vim-airline-themes',
  }
  -- use {
  --   'windwp/windline.nvim',
  --   config = function()
  --     -- require('windline')
  --     require('wlsample.airline')
  --     -- require('wlsample.airline_anim')
  --   end
  -- }
  -- use {
  --   'nvim-lualine/lualine.nvim',
  --   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  -- }
  -- LANGUAGES
  use {
    'alaviss/nim.nvim', -- Nim
    'dart-lang/dart-vim-plugin', -- Dart
    'fatih/vim-go', -- Go
    'JuliaEditorSupport/julia-vim', -- Julia
    'mfussenegger/nvim-jdtls', -- Java
    'omnisharp/omnisharp-vim', -- C# and F#
    -- 'rust-lang/rust.vim', -- Rust
    'simrat39/rust-tools.nvim', -- Rust
    'udalov/kotlin-vim', -- Kotlin
    'ziglang/zig.vim', -- Zig
  }
  -- FRAMEWORKS
  use {
    'thosakwe/vim-flutter', -- Flutter
  }
  -- COMPLETIONS
  use {
    'hrsh7th/nvim-cmp', -- The completion plugin
    'hrsh7th/cmp-buffer', -- buffer completions
    'hrsh7th/cmp-path', -- path completions
    'hrsh7th/cmp-cmdline', -- cmdline completions
    'saadparwaiz1/cmp_luasnip', -- snippet completions
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
  }
  -- SNIPPETS
  use {
    'L3MON4D3/LuaSnip',  --snippet engine
    'rafamadriz/friendly-snippets', -- a bunch of snippets to use
  }
  -- LSP
  use {
    'neovim/nvim-lspconfig', -- enable LSP
    'williamboman/nvim-lsp-installer', -- simple to use language server installer
    'tamago324/nlsp-settings.nvim', -- language server settings defined in json for
    -- 'williamboman/mason.nvim', -- simple to use language server installer
    -- 'williamboman/mason-lspconfig.nvim', -- simple to use language server installer
  }
  -- Utilities
  use {
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-media-files.nvim',
    'scrooloose/nerdtree',
    'scrooloose/nerdcommenter',
    'lewis6991/gitsigns.nvim',
    'numToStr/Comment.nvim',
    'akinsho/bufferline.nvim',
    'windwp/nvim-autopairs',
    'Olical/conjure',
  }
  -- Debuggers
  use {
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'mxsdev/nvim-dap-vscode-js',
    'mfussenegger/nvim-dap-python',
  }
  use {
    'leoluz/nvim-dap-go',
    config = function()
      require('dap-go').setup()
    end
  }
  use {
    'microsoft/vscode-js-debug',
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile" 
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

