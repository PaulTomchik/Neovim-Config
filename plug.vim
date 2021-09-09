call plug#begin('~/.local/share/nvim/plugged')

Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

Plug 'sjl/gundo.vim'

Plug 'kien/rainbow_parentheses.vim'

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wellle/tmux-complete.vim'
" Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Color schemes
 Plug 'romainl/Apprentice'

" Initialize plugin system
call plug#end()
