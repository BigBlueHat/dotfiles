set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
"Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'rking/ag.vim'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'plasticboy/vim-markdown'
"Plugin 'elzr/vim-json'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'posva/vim-vue'
Plugin 'vim-syntastic/syntastic'
Plugin 'isRuslan/vim-es6'
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" A couple options to make vim-powerline work correctly.
set laststatus=2
let g:Powerline_symbols = 'compatible'

" Tabs, Spaces and Indentation.
set expandtab " Use spaces for tabs.
set tabstop=2 " Number of spaces to use for tabs.
set shiftwidth=2 " Number of spaces to autoindent.
set softtabstop=2 " Number of spaces for a tab.
set autoindent " Set autoindenting on.
" set smartindent " Automatically insert another level of indent when needed.

" Toggle paste/nopaste using F10
set pastetoggle=<F10>
au InsertLeave * set nopaste

" Toggle line number using F2 for easy copying out of vim.
nnoremap <F2> :set norelativenumber!<CR>

" Set tab width to 4 spaces for python files
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
" Use tabs (not spaces) for PHP files
"autocmd FileType php setlocal noexpandtab
" Shut off matchpairs so the "visual bell" doesn't ring every time you type ->
autocmd FileType php setlocal matchpairs-=<:>

" Various.
"set bs=2 " Backspace, this is the same as :set backspace=indent,eol,start.
set ruler " Show the cursor position.
set scrolloff=10 " Show 10 lines above/below the cursor when scrolling.
set number " Line numbers on.
set showcmd " Shows the command in the last line of the screen.
set autoread " Read files when they've been changed outside of Vim.

" Disable the bell
set noerrorbells

set history=1000 " Number of command lines stored in the history tables.
set undolevels=1000 " Number of levels of undo

set title " Set the title in the console.

" Use matchtime and showmatch together.
set matchtime=2 " Time to show matching parent in 10ths of a sec.
set showmatch " Show matching parents.

set splitright " Open new vertical split windows to the right of the current one, not the left.
set splitbelow " See above description. Opens new windows below, not above.

" Backup.
set nobackup
set nowritebackup
set noswapfile

" Searching.
set hlsearch " Highlight search terms
set incsearch " Show search matches as you type
set ignorecase " Ignore case when searching
set smartcase " Make searches case sensitive only if they contain uppercase stuff

set wildmode=longest,list " File and directory matching mode.

set nrformats=hex " Allow incrementing and decrementing numbers that start with 0 using <c-a> and <c-x>

" Configuration for autocompletion. http://robots.thoughtbot.com/post/27041742805/vim-you-complete-me
set complete=.,b,u,]
set wildmode=longest,list:longest

" Use relative line numbers
" set relativenumber

" Display trailing whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

syntax on " Syntax highlighting on.

" Drupal command group, set the correct filetypes for Drupal files.
augroup drupal
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.theme set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.engine set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
augroup END

autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.jsonld set filetype=json
" Conceal hides double quotes, so JSON is more legible...but looks invalid
autocmd FileType json setlocal conceallevel=0

" Change the leader from \ to , for easier reaching
let mapleader = ","

" Map :set nocursorlinekeys to navigate tabs
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>

" Cursor doesn't skip wrapped lines with hitting j or k
nnoremap j gj
nnoremap k gk

" <c-j> and <c-k> move by 10 lines at a time
nmap <C-j> 10j
nmap <C-k> 10k
vmap <C-j> 10j
vmap <C-k> 10k

" Clear highlighted words using Esc when in normal mode
nnoremap <CR> :noh<CR>

" Indent as many times as you want in visual mode without losing focus
vnoremap < <gv
vnoremap > >gv

" Bind F5 to remove trailing spaces. http://vim.wikia.com/wiki/Remove_unwanted_spaces
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Map F1 to Esc instead of Help.
map <F1> <Esc>
imap <F1> <Esc>

" Make backspace delete all whitespace. http://vim.wikia.com/wiki/Whitespace_hungry_backspace/delete
"imap <BS> <Esc>d?\S?e1<CR>i

" Make a curly brace automatically insert an indented line
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>

" Add auto-expander for Handlebars template tags
imap {{ {{}}<Esc>hi

" Make jj and jk and kj  exit insert mode (since it's almost never typed normally).
imap jj <Esc>:w<CR>
imap jk <Esc>:w<CR>
imap kj <Esc>:w<CR>

" Set color scheme (t_Co=256 is necessary for 256 color terminals to work).
set t_Co=256
set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
colorscheme solarized

" Set options for Zen Coding
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

" Set options for ctrlp.vim
let g:ctrlp_dotfiles = 0
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_persistent_input = 0
let g:ctrlp_clear_cache_on_exit = 0

" Configure the Syntastic plugin for automatic syntax checking.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" Configure vim-gist
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_older_paste

au BufNewFile,BufRead *.ctp set filetype=php
au BufNewFile,BufRead *.mustache set filetype=html

set colorcolumn=80

" NERDTree mappings
map <C-n> :NERDTreeToggle<CR>

let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ag_prg = 'ag --nogroup --nocolor --column'
