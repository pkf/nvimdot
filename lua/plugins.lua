return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-treesitter/nvim-treesitter-textobjects', requires = 'nvim-treesitter/nvim-treesitter' }
  use { 'romgrk/nvim-treesitter-context', requires = 'nvim-treesitter/nvim-treesitter' }
  use { 'SmiteshP/nvim-gps', requires = 'nvim-treesitter/nvim-treesitter' }


  -- which-key
  use 'folke/which-key.nvim'
  -- telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-telescope/telescope.nvim', requires =  'nvim-lua/plenary.nvim' }
  -- lspconfig
  use 'neovim/nvim-lspconfig'
  -- rust-tools
  use 'simrat39/rust-tools.nvim'
  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  -- vsnip
  use 'hrsh7th/vim-vsnip'
  use "rafamadriz/friendly-snippets"
  -- use 'nvim-autopairs'
  use "windwp/nvim-autopairs"
  -- nvim-tree 
  use {'kyazdani42/nvim-tree.lua',    requires = 'kyazdani42/nvim-web-devicons'}
  -- bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  -- surround
  use "blackCauldron7/surround.nvim" 
  -- Comment 
  use 'numToStr/Comment.nvim' 
  -- nvim-coloizer
  use 'norcalli/nvim-colorizer.lua'
  -- translator
  use 'voldikss/vim-translator'
  -- golang
  use {'fatih/vim-go',run = ':GoInstallBinaries'}

  use {'glepnir/dashboard-nvim',event = "BufWinEnter"}
  ----------- colorscheme -----------
  -- srcery
  use 'srcery-colors/srcery-vim'


  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }


  -- git 
  use {"tpope/vim-fugitive"}
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    tag = 'release' -- To use the latest release
  }
  -- emmet
  use 'mattn/emmet-vim'
  --terminals
  use {"akinsho/toggleterm.nvim"}

 

end)
