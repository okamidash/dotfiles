call pathogen#infect()
set encoding=utf-8
syntax on
set term=xterm-256color

set clipboard=unnamedplus
set nocompatible
set cursorline          "find the current line quickly
set expandtab           "use spaces instead of tabs
set hidden              "switch between buffers without having to save first
set hlsearch
set incsearch                           "Incremental search
set laststatus=2      "always show statusline
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set mouse=a             "Enable mouse
set nowrap              "Don't Wrap
set number              "show line numbers
set report      =0      "Always report changed lines
set shiftwidth=4
set shortmess=at        "Disables Message Output on file saving
set showcmd             "show already typed keys when more are expected
set showmode            "show current mode in command line
set sidescroll=1
set softtabstop =4      "tab key indents by 4 spaces
set splitbelow          "Open new windows below
set synmaxcol   =200    "only highlight the first 200 cols
set ttyfast             "Faster Redrawing
set undodir=~/config/vim/undo
set undofile
set virtualedit=onemore " Enable free-range cursor
set whichwrap=b,s,<,>,[,]
set wrapscan            "searches wrap around end of file
set wildmode=longest,list,full
" keymaps

" Sudo commands
noremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
command W silent w !sudo tee %
command Q silent q!

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

map     <ESC>[[1;5C <C-Left>
map     <ESC>[[1;5D <C-Right>
map!    <ESC>[[1;5C <C-Left>
map!    <ESC>[[1;5D <C-Right>

imap jj <ESC>
"  color options
 set t_Co=256
set background=dark
" set guifont=Monospace\ 12
colorscheme bubblegum-256-dark

" Extensions
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme     = 'minimalist'
" YCM
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Vim Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>

" Yaml stuff
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>

" Vim Navigation for ALT keys
nnoremap <M-j> <C-W><C-J>
nnoremap <M-k> <C-W><C-K>
nnoremap <M-l> <C-W><C-L>
nnoremap <M-h> <C-W><C-H>
nnoremap <C-P> :terminal<CR>

nnoremap <C-Up> :res -5<CR>
nnoremap <C-Down> :res +5<CR>


" Vim Indentline
" Vim Autoclose
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

" java
let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150
let java_comment_strings=1
let java_highlight_java_lang_ids=1
autocmd FileType java set cinoptions+=j1 si shiftwidth=4 autoindent
