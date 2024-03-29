"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

autocmd FileType make setlocal noexpandtab
au BufRead,BufNewFile *.tsv     set filetype=tsv noet ts=8 sts=0

" Move between window splits
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <Leader>c :nohl<CR>

" Vim: search and highlight but do not jump
" https://stackoverflow.com/a/4257175/3970755
nnoremap # :keepjumps normal! mi#`i<CR>
nnoremap * :keepjumps normal! mi*`i<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set tabstop=2
set shiftwidth=2

set expandtab

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
nmap <up> gk
nmap <down> gj

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Pressing \ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

set relativenumber
set number
set hlsearch

if has("gui_running") 
	colorscheme ubloh
	set number
	set guioptions-=m  "remove menu bar
	set guioptions-=T  "remove toolbar
	set guioptions-=r  "remove right-hand scroll bar
else
  " color blaquemagick
  " color deep-space
  " color monrovia
  " color mourning
  " color codedark
  " color SerialExperimentsLain
  " color mourning
  " color mourning
  " color atom-dark
  color apprentice
  "let g:airline_theme='deep_space'
  let g:airline_theme='codedark'
  


  highlight Pmenu ctermbg=238 gui=bold
  hi LineNr ctermfg=236 ctermbg=none
  hi Normal ctermbg=none
  highlight NonText ctermbg=none
  highlight NonText ctermfg=0
  hi StatusLine ctermbg=none ctermfg=1
  hi StatusLineNC ctermbg=none ctermfg=1

  "if has("termguicolors")
      "set termguicolors
  "endif
endif
 
" For using vim as pager
let $PAGER=''

" View manpages in vim
runtime! ftplugin/man.vim

map <Leader>m :make<Esc>

function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

set wildmode=longest,list,full
set wildmenu

let g:airline_powerline_fonts = 1

" http://deploymentzone.com/2012/12/20/vim-set-syntax-based-on-shebang/
fun s:DetectEnv()  
  let tokens = split(getline(1))
  if len(tokens) >= 2
    setfiletype tokens[1]
  endif
endfun

autocmd BufNewFile,BufRead * call s:DetectEnv()  

nnoremap <silent> T :call CocAction('doHover')<CR>
