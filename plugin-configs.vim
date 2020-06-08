""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <F5> :GundoToggle<CR>
" let g:gundo_width=30
" let g:gundo_preview_height=30
" let g:gundo_preview_bottom=1
" let g:gundo_right=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if !argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
"autocmd FileType nerdtree setlocal relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :CocConfig opens the config file
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  let g:ale_fixers = {}
"  let g:ale_fixers['javascript'] = ['eslint', 'prettier']
"  let g:ale_fixers['typescript'] = ['eslint', 'prettier']
"  let g:ale_linters = { 'javascript': ['eslint'] }
"  "let g:ale_fixers = {'javascript': ['prettier_standard']}
"  "let g:ale_linters = {'javascript': ['']}
"  let g:ale_fix_on_save = 0
"  let g:ale_javascript_prettier_options = '--single-quote'
"  let g:ale_javascript_eslint_use_local = 1
"  " let g:ale_javascript_eslint_use_global = 1
"  " let g:ale_javascript_eslint_executable = '/usr/local/bin/eslint'
"  let g:airline#extensions#ale#enabled = 1
"  nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"  nmap <silent> <C-j> <Plug>(ale_next_wrap)

highlight clear SignColumn

"https://github.com/kentcdodds/prettier-eslint-cli#vim
" autocmd FileType javascript set formatprg=prettier-eslint\ --stdin

" let g:fixmyjs_engine = 'eslint'
" use linting tool installed locally in node_modules folder
" let g:fixmyjs_use_local = 1
" let g:fixmyjs_use_local = 1
" noremap <Leader><Leader>f :Fixmyjs<CR>

"https://github.com/Valloric/YouCompleteMe/issues/318
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


let g:NERDSpaceDelims = 1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" au BufNewFile,BufRead *.clj setfiletype clojure
" au BufNewFile,BufRead *.clj call PareditInitBuffer()
