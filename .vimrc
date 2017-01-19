execute pathogen#infect()

syntax on
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
set term=screen-256color


set shiftwidth=4
set expandtab

set laststatus=2
let g:airline_theme='luna'

set mouse=a
set ttymouse=xterm2


"
" Syntastic settings
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'


"
" 
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


if argc() == 0 && !exists('s:std_in')
    let g:nerdtree_tabs_open_on_console_startup=1
endif

let mapleader = ","

map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

nnoremap <Leader>s      :SyntasticToggleMode<CR>
