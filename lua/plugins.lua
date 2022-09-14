return require('packer').startup(function()
  --packer can manage itself
  use 'wbthomason/packer.nvim'
  --colorscheme
  use 'Mofiqul/dracula.nvim'
  --NerdTree
  use 'preservim/nerdTree' --File Browser
  use 'Xuyuanp/nerdtree-git-plugin' --git status
  use 'ryanoasis/vim-devicons'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  --use 'scrooloose/nerdtree-project-plugin'
  use 'PhilRunninger/nerdtree-buffer-ops'
  use 'PhilRunninger/nerdtree-visual-selection'
  --treesitter - highlight code structure
  use({
    'nvim-treesitter/nvim-treesitter',
    -- run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  })
  --LSP
  use { 'neoclide/coc.nvim', branch = 'release' }
  --Terminal
  -- use 'voldikss/vim-floaterm'
end)
