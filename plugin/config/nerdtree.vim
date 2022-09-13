"  nnoremap <leader>n :NERDTreeFocus<CR>
"  nnoremap <C-n> :NERDTree<CR>
"  nnoremap <C-t> :NERDTreeToggle<CR>
"  nnoremap <C-f> :NERDTreeFind<CR>
set encoding=UTF-8
let s:fontsize = 14
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! JetBrains Mono:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

map <silent> <F5> :NERDTreeToggle<CR>
" Exit if NerdTree is the only buffer left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |quit | endif

" Change arrow to expand/collapse tree
let g:NerdTreeDirArrowExpandable = ''
let g:NerdTreeDirArrowCollapseable = ''