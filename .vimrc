"-- Encoding
set fileencodings=utf-8

"-- Filetype options
filetype plugin indent on

"-- Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set noexpandtab
set cursorline
set scrolloff=8

"-- make sure syntax highlighing is on by default
syntax on

"-- Wildmenu
set wildmenu
set wildmode=list:longest

"-- Editor behavior
set hidden
set history=1000
set nowrap
set number

"-- Enable 256 colors
set t_Co=256

"-- Colour scheme
colorscheme xoria256

"-- Show whitespace chars
set listchars=tab:»\ ,trail:·,extends:>,precedes:<
set list

"-- Set the leader character
let mapleader = ","
let g:mapleader = ","

"-- Highlight long lines (soft limit: 80, hard limit: 100)
au BufWinEnter *.php,*.py let w:m1=matchadd('Search', '\%<101v.\%>80v', -1)
au BufWinEnter *.php,*.py let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)

"-- Remove trailing whitespaces from lines
autocmd FileType php autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

"-- Better buffer behavior
:nnoremap <Leader>q :Bdelete<CR>
:nnoremap <Leader>qa :bufdo :Bdelete<CR>

"-- No eols
autocmd BufWritePre *.php setlocal binary
autocmd BufWritePre *.php setlocal noeol
autocmd BufWritePost *.php setlocal nobinary

"-- Wild and CtrlP menu ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*/vendor/**
set wildignore+=*/public/builds/**
set wildignore+=*/public/components/**

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"-- CtrlP remapping
map <C-p> :CtrlP<cr>

"-- Global variables
let g:snips_author = "Richard Vanbergen"
let g:netrw_keepdir = 0

"-- PHP highlighting
let php_sql_query=1
let php_htmlInStrings=1

"-- Shortcuts
noremap <C-n> :bn<CR>
noremap <C-m> :bp<CR>

"-- quick escape
imap jj <Esc>

"-- remap commands so I don't have to use shift
map ; :
noremap ;; ;

"-- Auto change to current directory
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

"-- edit file in current directory
nmap :ed :edit %:p:h/

"-- Jump to perl module
vmap <F2> y :new \| :e `pmpath <C-r>"`<CR>

"-- vsplit rebindings
nmap <leader>vs :vsplit<cr>
nmap <leader>sp :split<cr>

" Use ctrl-[hjkl] to select the active split!
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

"-- Edit a todolist
nmap ,todo :e TODO.md<cr>

"-- NERDTree
nmap <C-b> :NERDTreeToggle<cr>

"-- Move project files out of directory
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

"-- powerline
let g:airline_powerline_fonts=1
set laststatus=2

"-- laravel
nmap <leader>lr :e app/routes.php<cr>
nmap <leader>lca :e app/config/app.php<cr>
nmap <leader>lc :e composer.json<cr>

nmap <leader>lagc !php artisan generate:controller
nmap <leader>lagmo !php artisan generate:model
nmap <leader>lagmi !php artisan generate:migration
nmap <leader>lagf !php artisan generate:form

"-- mouse should work
set mouse=a

"-- Pathogen
execute pathogen#infect()
