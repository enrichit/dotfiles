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
colorscheme railscasts

"-- Show whitespace chars
set listchars=tab:»\ ,trail:·,extends:>,precedes:<
set list

"-- Highlight long lines (soft limit: 80, hard limit: 100)
au BufWinEnter *.php,*.py let w:m1=matchadd('Search', '\%<101v.\%>80v', -1)
au BufWinEnter *.php,*.py let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)

"-- Remove trailing whitespaces from lines
autocmd FileType php autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

"-- Press F5 to Clean Current Buffer 
"-- (i.e., 2-spaces become tabs, end-line whitespace trimmed)
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<CR>:let @/=_s<Bar>:nohl<CR>

"-- No eols
autocmd BufWritePre *.php setlocal binary
autocmd BufWritePre *.php setlocal noeol
autocmd BufWritePost *.php setlocal nobinary

"-- Copy and paste mapping

"-- Add CtrlP to runtimepath
set runtimepath^=~/.vim/bundle/ctrlp.vim

"-- Wild and CtrlP menu ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"-- CtrlP remapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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

"-- Jump to perl module
vmap <F2> y :new \| :e `pmpath <C-r>"`<CR>
