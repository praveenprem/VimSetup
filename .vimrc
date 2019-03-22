
syntax on
filetype plugin indent on

set term=screen-256color

set laststatus=2
set shiftwidth=4
set expandtab
set mouse=a
set ttymouse=xterm2
set relativenumber

" To disable a plugin, add its bundle name to the following list
let g:pathogen_disabled = []
if v:version < '704'
    call add(g:pathogen_disabled, 'ultisnips')
endif
execute pathogen#infect()



" =============================================================================
" Key bindings (mappings)
" =============================================================================
let mapleader = ","
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-n>   :tabnext<CR>
inoremap <C-n>   <Esc>:tabnext<CR>i
nnoremap <Leader>s      :SyntasticToggleMode<CR>
map <Leader>t <plug>NERDTreeTabsToggle<CR>



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
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

"
" CTRL-P
" https://github.com/kien/ctrlp.vim.git
"
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_max_files=0

"
" NEDR Tree
" https://github.com/jistr/vim-nerdtree-tabs.git
"
if argc() == 0 && !exists('s:std_in')
    let g:nerdtree_tabs_open_on_console_startup=1
endif

"
" YouCompleteMe
" https://github.com/Valloric/YouCompleteMe.git
"
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

set backspace=indent,eol,start
set foldmethod=indent
