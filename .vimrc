" Basics {
  set nocompatible " explicitly get out of vi-compatible mode
  set background=dark " we plan to use a dark background
  syntax on " syntax highlighting on
" }

" Vim UI {
  set colorcolumn=80 " vertical bar at line 80
"  set cursorcolumn " highlight the current column
  set cursorline " highlight current line
  set incsearch " BUT do highlight as you type you search phrase
  set laststatus=2 " always show the status line
  set lazyredraw " do not redraw while running macros
  set linespace=0 " don't insert any extra pixel lines betweens rows
  set list " we do what to show tabs, to ensure we get them out of my files
  set listchars=tab:>-,trail:- " show tabs and trailing whitespace
  set matchtime=5 " how many tenths of a second to blink matching brackets for
  set nohlsearch " do not highlight searched for phrases
  set nostartofline " leave my cursor where it was
  set novisualbell " don't blink
  set number " turn on line numbers
  set numberwidth=5 " We are good up to 99999 lines
  set report=0 " tell us when anything is changed via :...
  set ruler " Always show current positions along the bottom
  set scrolloff=10 " Keep 5 lines (top/bottom) for scope
  set shortmess=atI " shortens messages to avoid 'press a key' prompt
  set showcmd " show the command being typed
  set showmatch " show matching brackets
  set sidescrolloff=10 " Keep 5 lines at the size
  " statusline demo: ~\myfile[+] [FORMAT=format] [TYPE=type] [ASCII=000] [HEX=00] [POS=0000,0000][00%] [LEN=000]
  set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" }

" Text Formatting/Layout {
  set completeopt=menu,longest " improve the way autocomplete works
  set formatoptions=rq " Automatically insert comment leader on return, and let gq work
  set ignorecase " case insensitive by default
"  set spell " spell checker
  set nowrap " do not wrap line
  set paste " clean paste, no tabbing per line
  set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
  set smartcase " if there are caps, go case-sensitive
  " Indent Related {
    set shiftwidth=4 " unify
    set softtabstop=4 " unify
    set tabstop=4 " real tabs should be 4, but they will show with set list on
    set expandtab " no real tabs please!
  " }
" }
function! ToggleSyntax()
    if exists("g:syntax_on")
        syntax off
    else
        syntax enable
    endif
endfunction

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_debug=3

nmap <silent> ;s :call ToggleSyntax()<CR>
