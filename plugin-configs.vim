""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <F5> :GundoToggle<CR>
" let g:gundo_width=30
" let g:gundo_preview_height=30
" let g:gundo_preview_bottom=1
" let g:gundo_right=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Valloric/YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_path_to_python_interpreter='/usr/bin/python2'
" let g:ycm_path_server_python_interpreter='/usr/bin/python2'

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
" Tern
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:tern_show_argument_hints=1
" let g:tern_map_keys=1

" let g:javascript_plugin_jsdoc = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma'
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_javascript_eslint_use_local = 1
" let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = '/usr/local/bin/eslint'
let g:airline#extensions#ale#enabled = 1

highlight clear SignColumn

"https://github.com/kentcdodds/prettier-eslint-cli#vim
" autocmd FileType javascript set formatprg=prettier-eslint\ --stdin

" let g:fixmyjs_engine = 'eslint'
" use linting tool installed locally in node_modules folder
" let g:fixmyjs_use_local = 1
" let g:fixmyjs_use_local = 1
" noremap <Leader><Leader>f :Fixmyjs<CR>

"https://github.com/Valloric/YouCompleteMe/issues/318<Paste>
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" if executable('ag')
  " let g:ackprg = 'ag --vimgrep'
" endif


let g:NERDSpaceDelims = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
" nnoremap <leader>l :call ToggleLocationList()<CR>

" " s: Find this C symbol
" nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" " g: Find this definition
" nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" " d: Find functions called by this function
" nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" " c: Find functions calling this function
" nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" " t: Find this text string
" nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" " e: Find this egrep pattern
" nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" " f: Find this file
" nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" " i: Find files #including this file
" nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>



