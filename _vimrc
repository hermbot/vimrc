" =============================================================================
" Appearance
" =============================================================================


set number              " Line numbers on
syntax enable           " Enable syntax highlighting
set noerrorbells        " Disable error bells
set title               " Show file name in Windows toolbar
set shortmess+=I        " Disable intro message

set guioptions-=T      " Disable toolbar 

set lines=40            " Default height
set columns=95          " Default width
set hlsearch            " Highlight search results

" Attempt to load preferred scheme

try
    colorscheme solarized 
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme slate
endtry

set background=light

" Formatting options include: Consolas:h10:cANSI
" Other option includes: DejaVu\ Sans\ Mono:h10

if has("gui_running")
  if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono:h10
  elseif has("gui_win32")
    set guifont=DejaVu\ Sans\ Mono:h10  
    "set guifont=Consolas:h10
  endif
endif


" =============================================================================
" Editing
" =============================================================================


set expandtab           " Tab in insert mode will produce spaces
set shiftwidth=4        " Python friendly
set softtabstop=4       " Python friendly
set autoindent          " Enable auto indentation
set nowrap              " Disables line wrapping

set foldmethod=indent
set foldlevel=99
set laststatus=2
set scrolloff=3         " Min. number of lines above/below curosor

filetype on
filetype plugin indent on

set backspace=2
:2mat ErrorMsg '\%81v.' " Highlight lines past 80 characters


" =============================================================================
" Plugin Settings and Mappings
" ! Don't put any spaces after key mappings - will result in erratic behavior
" =============================================================================

nore ; :
nore , ;
:nmap j gj
:nmap k gk
:imap <S-Space> <Esc>
