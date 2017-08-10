call plug#begin('~/.local/share/nvim/plugged')

"Plug 'pangloss/vim-javascript'
"Plug 'SirVer/ultisnips'
"Plug 'mxw/vim-jsx'
"Plug 'Quramy/tsuquyomi'
"Plug 'SirVer/ultisnips'
" Plug 'vim-syntastic/syntastic'
 Plug 'Valloric/YouCompleteMe'
" Plug 'honza/vim-snippets'
" Plug 'jceb/vim-orgmode'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'marijnh/tern_for_vim'
" Plug 'mileszs/ack.vim'
" Plug 'othree/jspc.vim'
" Plug 'ruanyl/vim-fixmyjs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
" Plug 'sjl/gundo.vim'
" Plug 'stephenway/postcss.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-scripts/cscope.vim'
Plug 'w0rp/ale'
" Plug 'leafgarland/typescript-vim'
" Plug 'Quramy/vim-js-pretty-template'
" Plug 'Shougo/denite.nvim'
" Plug 'mhartington/vim-typings'
" Plug 'Quramy/vim-dtsm'
" Plug 'sbdchd/neoformat'

 

" Color schemes
" Plug 'Haron-Prime/Antares'
" Plug 'altercation/vim-colors-solarized'
" Plug 'bounceme/base.vim'
" Plug 'chmllr/elrodeo-vim-colorscheme'
" Plug 'davidklsn/vim-sialoquent'
" Plug 'dracula/vim'
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'ianremmler/frood'
" Plug 'jakwings/vim-colors'
" Plug 'jansenfuller/crayon'
" Plug 'laserswald/chameleon.vim'
" Plug 'lu-ren/SerialExperimentsLain'
" Plug 'nightsense/seabird'
 Plug 'romainl/Apprentice'
" Plug 'romainl/flattened'
" Plug 'snowcrshd/cyberpunk.vim'
" Plug 'tomasiser/vim-code-dark'
" Plug 'tyrannicaltoucan/vim-deep-space'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-scripts/ChocolateLiquor'
" Plug 'vim-scripts/xoria256.vim'
" Plug 'whatyouhide/vim-gotham'
" Plug 'xero/blaquemagick.vim'
" Plug 'zaki/zazen'
" Plug 'zakj/vim-mourning'


" Initialize plugin system
call plug#end()
