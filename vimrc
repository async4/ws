call plug#begin()
   Plug 'preservim/nerdtree'
   Plug 'vim-airline/vim-airline'
   Plug 'ryanoasis/vim-devicons'
call plug#end()


"NERDTree"
autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=40
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

"custom-settings"
set number
set cursorline
set tabstop=3 softtabstop=3 shiftwidth=3 expandtab

"disable arrow keys"
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
