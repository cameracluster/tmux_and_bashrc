syntax on
set ruler
" Show line numbers.
"set number
"set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
" set laststatus=2

set backspace=indent,eol,start
set ignorecase
set smartcase
set incsearch

nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
set nohlsearch
" let g:lastplace_ignore = "gitcommit,gitrebase,hgcommit,svn,xxd"
" let g:lastplace_ignore_buftype = "help,nofile,quickfix"
" let g:lastplace_open_folds = 0

set whichwrap+=<,>,h,l

set tabstop=4
set shiftwidth=4
set expandtab
" Remember cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
endif

