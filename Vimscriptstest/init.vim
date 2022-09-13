call plug#begin('~/AppData/Local/nvim/plugged')

"THEME
	Plug 'Mofiqul/dracula.nvim' 	"Dracula theme
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
"==========================================================
" => GENERAL SETTING
"==========================================================
"set number
set relativenumber
syntax on
" Enable copying from vim to clipboard
"Colorscheme
colorscheme dracula
