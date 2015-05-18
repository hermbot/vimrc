" =============================================================================
" Plugin stuff
" =============================================================================

execute pathogen#infect()

" Required for airline symbols
set encoding=utf-8

" enables fancy powerline symbols
let g:airline_powerline_fonts = 1

let g:pymode_rope_autoimport = 0
let g:pymode_trim_whitespaces = 0
let g:pymode_options_colorcolumn = 0

nnoremap <F5> :GundoToggle<CR>

" =============================================================================
" Appearance
" =============================================================================

syntax enable           " Enable syntax highlighting

set number              " Line numbers on
set noerrorbells        " Disable error bells
set title               " Show file name in Windows toolbar
set shortmess+=I        " Disable intro message

set guioptions-=T       " Disable toolbar, I waffle on this

set lines=40            " Default height
set columns=95          " Default width
set hlsearch            " Highlight search results


" Attempt to load preferred background
try
    colorscheme Tomorrow
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme slate
endtry

" Formatting options include: Consolas:h10:cANSI
" Other option includes: DejaVu\ Sans\ Mono:h10
if has("gui_running")
  if has("gui_gtk2")
    set guifont=monospace:h11
  elseif has("gui_win32")
    set guifont=Consolas:h11
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
set scrolloff=3         " Minimum number of lines between cursor & edge
set hidden              " Allows buffers to be hidden with unsaved changes
set laststatus=2        " Always display status line
set backspace=2         " Forces backspace to work as normal

set foldmethod=indent   " Indents are fold points; helpful for python
set foldlevel=99        " Opens all folds on launch

filetype on
filetype plugin indent on

:2mat ErrorMsg '\%80v.' " Highlight lines past 79 characters

" Trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" =============================================================================
" Mappings - no blank spaces after mappings - will cause errors!
" =============================================================================

nore ; :
nore , ;
:imap <S-Space> <Esc>

nnoremap H 0
nnoremap L $
"nnoremap J <C-d>
"nnoremap K <C-u>
nnoremap J 7j
nnoremap K 7k

" Tab behavior like Chrome/Firefox
nnoremap <C-t> :tabnew<CR>
nnoremap <C-b> :tabprevious<CR>
nnoremap <C-n> :tabnext<CR>
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-b> <Esc>:tabprevious<CR>i
inoremap <C-n> <Esc>:tabnext<CR>i

" Time to be a big boy
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

