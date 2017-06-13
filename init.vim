set nocompatible

" Plug plugin manager
source ~/.config/nvim/plug.vim

" Key mappings, colors, etc.
source ~/.config/nvim/interface.vim

filetype plugin indent on

" Configure plugins
source ~/.config/nvim/plugin-configs.vim

set wmh=0
set fillchars=vert:│
hi VertSplit        ctermfg=234  ctermbg=none cterm=none

