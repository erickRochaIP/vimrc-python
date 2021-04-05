"~/.vimrc

call plug#begin('~/.vim/plugged')

" Plugins

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'KKPMW/vim-sendtowindow'
Plug 'yuttie/comfortable-motion.vim'
Plug 'dense-analysis/ale'
Plug 'fisadev/vim-isort'

call plug#end()


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
" Exit Vim if NERDTree is the only window left.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Ale Linting
let g:ale_sign_column_always=1
let g:ale_lint_on_enter=1
let g:ale_lint_on_text_changed='always'
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_linters={'python': ['flake8']}

" vim-isort
let g:vim_isort_map = '<C-i>'

" lightline settings
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
			\ 	'left': [ [ 'mode', 'paste'],
			\							[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
			\ },
			\ 'component_function': {
			\		'gitbranch': 'FugitiveHead'
			\ },
			\ }

