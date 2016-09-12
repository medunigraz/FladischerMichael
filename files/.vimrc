set nocompatible " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Utilities
Bundle 'tpope/vim-sensible'
"Bundle 'tsaleh/vim-matchit'
Bundle 'Raimondi/delimitMate'
"Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/dwm.vim'
Bundle 'tsaleh/vim-align'
Bundle 'mjbrownie/Trac.vim'
Bundle 'mattn/webapi-vim'
Bundle 'vim-scripts/YankRing.vim'
"Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'benmills/vimux'
"Bundle 'myusuf3/numbers.vim'
Bundle 'rking/ag.vim'
Bundle 'jaxbot/github-issues.vim'

" File Management
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'vim-scripts/mru.vim'
"Bundle 'vim-scripts/taglist.vim'
Bundle 'kien/ctrlp.vim'

" VCS
"Bundle 'tpope/vim-fugitive'
Bundle 'int3/vim-extradite'
Bundle 'airblade/vim-gitgutter'
Bundle 'vim-scripts/vim-svngutter'

" Python
"Bundle 'ivanov/vim-ipython'
"Bundle 'kevinw/pyflakes-vim'
"Bundle 'vim-scripts/pep8'
"Bundle 'vim-scripts/Pydiction'
"Bundle 'nvie/vim-flake8'
Bundle 'vim-scripts/vim-autopep8'
"Bundle 'vim-scripts/indentpython.vim'
Bundle 'lambdalisue/vim-django-support'

" Syntax
"Bundle 'scrooloose/syntastic'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-perl/vim-perl'
Bundle 'plasticboy/vim-markdown'
Bundle 'juvenn/mustache.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'vim-scripts/tComment'
Bundle 'skammer/vim-css-color'
Bundle 'vim-scripts/characterize.vim'
Bundle 'vim-scripts/xml.vim'
Bundle 'vim-scripts/closetag.vim'
Bundle 'elmar-hinz/vim.typoscript'
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'empanda/vim-varnish'

" Color Scheme
Bundle 'Rykka/colorv.vim'
"Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'vim-scripts/ColorSchemePicker'

filetype plugin indent on     " required!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" Ignore some file
set wildignore=*.swp,*.bak,*.pyc,*.class

" Set to auto read when a file is changed from the outside
set autowrite

" With a map leader it's possible to do extra key combinations
" leader is press comma (,) key
" like <leader>w saves the current file
let mapleader=","
let g:mapleader=","

" Fast saving with leader + w
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
"map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=160
set smarttab
set expandtab

set lbr
set tw=160

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set so=7            " Set 7 lines to the curors - when moving vertical..
set ruler           "Always show current position
set hid             "Change buffer - without saving
set nohidden
set list
"set mouse=a

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nolazyredraw "Don't redraw while executing macros
set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them

" No sound on errors
set noerrorbells
set novisualbell
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

set shell=/usr/bin/zsh

set background=dark
set t_Co=256
"let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
let g:solarized_termcolors=256
"let g:solarized_termtrans=0
"let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

set encoding=utf8
try
    lang en_DK
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Useful when moving accross long lines
nnoremap j gj
nnoremap k gk

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" GRB: clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<CR>/<BS>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" My CUSTOM
"
set cmdheight=1               " Explicitly set the height of the command line
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set cursorline
set colorcolumn=160 " Mark 160th column with a red line

" Taken From http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
autocmd FileType python highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
autocmd FileType python match OverLength /\%161v.\+/

" have command-line completion <tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <tab>s cycle through the possibilities:
set wildmode=list:longest,full

" Split behaviour
set splitbelow
set splitright

"--- search options ------------
set incsearch       " show 'best match so far' as you type
set hlsearch        " hilight the items found by the search
set ignorecase      " ignores case of letters on searches
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters

" Search and error color highlights
hi Search guifg=#ffffff guibg=#0000ff gui=none ctermfg=white ctermbg=darkblue
hi IncSearch guifg=#ffffff guibg=#8888ff gui=none ctermfg=white
highlight SpellBad guifg=#ffffff guibg=#8888ff gui=none ctermfg=black ctermbg=darkred

" Always show status line, even for one window
set laststatus=2

" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=5

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" Don't request terminal version string (for xterm)
"set t_RV=

"--- Keystrokes ----------------
" h and l wrap between lines, cursor keys wrap in insertion mode
set whichwrap=h,l,~,[,]

" page down with <SPACE>, pageup with - or <BkSpc>
noremap <Space> <PageDown>
noremap <BS> <PageUp>

" Execute Python file being edited with <Shift> + e:
autocmd FileType python nnoremap <leader>e w:<CR>:!python % <CR>
" Execute autopep8
autocmd FileType python map <buffer> <C-8> :call Autopep8()<CR>

" Shortcut to Close quickfix window with leader+c
nnoremap <leader>c <CR>:cclose<CR>

" tab navigation
nnoremap <leader><right> :tabnext<CR>
nnoremap <leader><left>  :tabprevious<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <S-left> gT
nnoremap <S-right> gt
nnoremap <S-h> gT
nnoremap <S-l> gt

nmap <leader>l :setlocal number!<CR>
nmap <leader>p :set paste!<CR>

" German keyboard
nnoremap t <C-]>

" Quick spelling fix
imap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-f> [s1z=<c-o>

" Open all files in tabs
"autocmd VimEnter * tab all
"autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'


" Set autocomplete form
set completeopt=menuone,longest,preview

"--- python formatting help ---
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Enable omni completion.
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php,ctp set omnifunc=phpcomplete#CompletePHP
autocmd FileType vim set omnifunc=syntaxcomplete#Complete

" markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=80

" http://www.brankovukelic.com/post/2091037293/turn-vim-into-powerful-javascript-editor"

" Python (tab width 4 chr, no wrapping)
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
autocmd FileType python set textwidth=0

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
autocmd FileType htmldjango set sw=2
autocmd FileType htmldjango set ts=2
autocmd FileType htmldjango set sts=2
autocmd FileType htmldjango set textwidth=0

" XHTML (tab width 2 chr, no wrapping)
autocmd FileType xhtml set sw=2
autocmd FileType xhtml set ts=2
autocmd FileType xhtml set sts=2
autocmd FileType xhtml set textwidth=0

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" Folding
" auto save folding : http://princ3.wordpress.com/2007/01/26/automaticaly-save-foldings-in-vim/
set viewoptions=folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

autocmd Syntax c,cpp,vim,xml,html,xhtml,js,php,py,python set foldmethod=manual
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR

"remove trailing whitespace
"http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" tabs, not spaces for php, ctp
"au BufEnter,BufRead *.php,*.ctp set noexpandtab

""""""""""""""""""""""""""""""""""""""""""""""""
" Auto close preview menu autocomplete after choose
" http://stackoverflow.com/questions/3105307/how-do-you-automatically-remove-the-preview-window-after-autocompletion-in-vim
"
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
map <leader>m :MRU<CR>
map <leader>n :NERDTreeTabsToggle<CR>
map <leader>s :SyntasticToggleMode<CR>
map <leader>b :TlistToggle<CR>
map <leader>c :Extradite!<CR>
map <leader>g :GitGutterToggle<CR>
map <leader>v :SvnGutterToggle<CR>
map <leader>e :BufExplorerVerticalSplit<CR>

" NerdTree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd l
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=0
let g:NERDTreeMouseMode=2
let g:NERDTreeWinSize=40
let g:NERDChristmasTree=1
let g:NERDTreeChDirMode=1
let g:NERDTreeIgnore=['\.pyc$[[file]]']
let g:NERDTreeMinimalUI=1
let g:nerdtree_tabs_smart_startup_focus=0

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" Sessions
let g:session_autosave = 'no'

" MRU - Most Recently Used Files
let g:MRU_Window_Height = 15
let g:MRU_Max_Entries = 100
let g:MRU_Add_Menu = 0

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='✗'
let g:syntastic_python_checkers = ['python','pylint','pep8']
let g:syntastic_tex_checkers = ['lacheck','chktex']

" Trac
let g:tracServerList = {}

" Taglist
let g:Tlist_Exit_OnlyWindow = 1

" GitGutter
let g:gitgutter_escape_grep = 1

" SvnGutter
let g:svngutter_escape_grep = 1

" CtrlP
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
