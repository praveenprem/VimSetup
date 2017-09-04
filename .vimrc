execute pathogen#infect()

syntax on
filetype plugin indent on

set term=screen-256color

set laststatus=2
set shiftwidth=4
set expandtab
set mouse=a
set ttymouse=xterm2
set relativenumber

" =============================================================================
" Key bindings (mappings)
" =============================================================================
let mapleader = ","
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-n>   :tabnext<CR>
inoremap <C-n>   <Esc>:tabnext<CR>i
nnoremap <Leader>s      :SyntasticToggleMode<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>



" =============================================================================
" Plugin configuration
" =============================================================================
"
" Airline
" https://github.com/bling/vim-airline
" https://github.com/vim-airline/vim-airline-themes
"
let g:airline_theme='luna'

"
" Syntastic settings
" https://github.com/scrooloose/syntastic.git
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:jsx_ext_required = 0 " Parses JSX even on .js files
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"
" Ultisnips
" https://github.com/SirVer/ultisnips.git
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"
" CTRL-P
" https://github.com/kien/ctrlp.vim.git
"
set runtimepath^=~/.vim/bundle/ctrlp.vim

"
" NEDR Tree
" https://github.com/jistr/vim-nerdtree-tabs.git
"
if argc() == 0 && !exists('s:std_in')
    let g:nerdtree_tabs_open_on_console_startup=1
endif

