"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Paul McMonagle's Vim Config                           "
"                                                       "
" Inspired by 'The Ultimate Vim Configuration' by       "
" Amir Salihefendic                                     "
"   https://github.com/amix/vimrc                       "
"                                                       "
" Sections:                                             "
"   + Configure Plugins                                 "
"   + Enable Features                                   "
"   + Configure Features                                "
"   + Configure Mappings                                "
"   + Auto Commands                                     "
"   + Functions                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Plugins (Vundle)                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible             " be iMproved, required
set shell=/bin/bash          " use the right shell (Fish breaks vundle)
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""""" PLUGINS HERE
Plugin 'gmarik/Vundle.vim'   " required
Plugin 'flazz/vim-colorschemes'
Plugin 'valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Bundle 'joonty/vdebug.git'
Bundle 'godlygeek/tabular'
Bundle 'clausreinke/typescript-tools.vim'
Bundle 'leafgarland/typescript-vim'
""""" END PLUGINS

call vundle#end()            " required
filetype plugin indent on    " required

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Plugins (YouCompleteMe)                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_collect_identifiers_from_tags_files = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Plugins (Syntastic)                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

let g:syntastic_javascript_checkers = ['jshint', 'jscs']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Plugins (typescript-vim)                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists("g:ycm_semantic_triggers")
   let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Plugins (YouCompleteMe)                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_collect_identifiers_from_tags_files = 1
  
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Plugins (Syntastic)                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

let g:syntastic_javascript_checkers = ['jshint', 'jscs']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Features                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable        " Turn on syntax highlighting. Why wouldn't you want this?
set nocompatible     " Enable vim's iMproved features
set autoread         " Detect external changes to the file
set number           " Turn on line numbers
set wildmenu         " Turn on the wildmenu (autocompletes vim commands with Tab)
set ruler            " Shows the cursor position in the statusline
set hid              " Hide the buffer when it's abandoned
set ignorecase       " Ignore case when searching
set smartcase        " Try to be smart about searching with cases
set hlsearch         " Hilight search results
set incsearch        " Incremental search - searches as you type
set lazyredraw       " Don't redraw while executing macros (improves performance)
set magic            " RegExp special characters are treating similar to grep (see magic vs. very magic)
set showmatch        " Show the matching bracket when a bracket is under the cursor
set noerrorbells     " Mute audio feedback on error. The audio is usually annoying.
set nobackup         " Turn off backups. Do your backing up in Git!
set nowb             " Turn off writebackups.
set noswapfile       " Turn off swapfiles. Vim will clutter your working dir otherwise.
set expandtab        " Turn TABS into SPACES. (in b4 holy war)
set smarttab         " Use 'shiftwidth' setting for tabs instead of 'tabstop' 
set linebreak        " Break long lines at the nearest space instead of the middle of the word
set wrap             " Wrap lines - 'set tw' determines when to wrap
set ai               " Auto indent
set si               " Smart indent

" Disabled "
"set novisualbell     " Don't show visual feedback on error 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Features                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=700                 " How many lines of history vim should remember
set so=7                        " How many lines before the edge of file before we scroll 
set cmdheight=2                 " Height of the command bar; give ourselves some space with 2
set foldcolumn=1                " Add a small margin to the left
set mat=2                       " Blink the matching bracket cursor every n tenths of a second
set shiftwidth=4                " Shift 4 characters wide
set tabstop=4                   " Tab 4 characters wide
set encoding=utf8               " Default encoding
set ffs=unix,dos,mac            " Prefer unix line-endings 
set backspace=eol,start,indent  " Backspace behavior; this apparently mimics most other apps
set whichwrap=<,>,h,l           " Allow left, right, h, l to move to the next line at end characters 
set tm=500                      " Set the timeout length when partial commands are given 
set tw=500                      " Wrap text after n characters
set laststatus=2                " Always show the status line
set viminfo^=%                  " Remember open buffers on close
set tags+=tags,.git/tags        " Look for a CTags file at either .git/tags or ./tags
"set t_vb=                       " Set the visual error bell to an empty character

try
    "colorscheme koehler        " My favourite built-in colorscheme as a backup 
    colorscheme d8g_01          " Minimal white+blue. Requires flazz/vim-colorschemes 
catch
endtry

try
    set switchbuf=useopen,usetab,newtab
    set stal=2                  " Always display a tab, even if there's only one open 
catch
endtry

if has("gui_running")
    set guioptions-=T           " Don't enable the Toolbar
    set guioptions-=e           " Don't use the GUI tabline
    set t_Co=256                " Set 256 terminal colours
    set guitablabel=%M\ %t      " Set the label of gui tabs
endif

set wildignore=*.o,*~,*.pyc     " Don't include compiled files in the wildmenu
if has("win16") || has("win32")
    set wildignore+=*\.git/*,*/.hg/*,*/.svn/*,*/.DS_store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Set the statusline
" Requires HasPaste()
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ \ Col:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Mappings                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","             " Set the leader character
let g:mapleader = ","

" j, k will treat word-wraps as seperate lines
map j gj
map k gk

" Hit space to search (c-space to backsearch)
map <space> /
map <c-space> ?

" Remove highlights with leader+return
map <silent> <leader><cr> :noh<cr>

" Move between windows with ctrl+h,j,k,l
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Map for starting typescript-vim
map <leader>tss :TSSstarthere<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
" TODO I should change this last one - I use g+t, g+T more often
map <leader>t<leader> :tabnext

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch working directory to the current path of the buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" 0 Moves to the first non-whitespace character
map 0 ^

" Toggle pastemode and spellcheck
map <leader>pp :setlocal paste!<cr>
map <leader>ss :setlocal spell!<cr>
map <leader>s? z=

" Generate CTags Files
" requires CreateTags()
map <leader>ct :call CreateTags()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto Commands                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return to last edit position when opening files.
" Amir says I want this!
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Delete trailing white-space when saving python and coffeescript files
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Map custom filetypes to known languages
autocmd BufRead,BufNewFile *.volt set filetype=html


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! HasPaste()
    if &paste
        return 'PASTE MODE '
    en
    return ''
endfunction

function CreateTags()
    exec ':!ctags -R --fields=+l -f ./.git/tags .'
endfunction
 
