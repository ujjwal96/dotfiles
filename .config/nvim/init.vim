
call plug#begin('~/.local/share/nvim/plugged')
 Plug 'itchyny/lightline.vim'
 Plug 'terryma/vim-multiple-cursors'
 Plug 'airblade/vim-gitgutter'
 Plug 'scrooloose/nerdtree'
 Plug 'itchyny/vim-gitbranch'
 Plug 'morhetz/gruvbox'
 Plug 'arcticicestudio/nord-vim'
 Plug 'jacoborus/tender.vim'
call plug#end()

" Colorscheme
syntax enable
if (has("termguicolors"))
 set termguicolors
endif
colorscheme gruvbox

" Lighline config
let g:lightline = {
        \     'active': {
        \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
        \         'right': [['lineinfo'], ['percent'], ['gitbranch', 'fileformat', 'fileencoding']]
        \     },
        \     'component_function': {
        \         'gitbranch': 'gitbranch#name'
        \ }
    \ }

" Nerdtree Toggle
map <C-o> :NERDTreeToggle<CR>

" Tab
set tabstop=4 expandtab shiftwidth=4 smarttab

" Line numbers
set number

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Highlighting stuff
"set cc=+1,+2,+3,+4,+5
"hi ColorColumn guibg=red
highlight OverLength ctermbg=red ctermfg=white guibg=red
autocmd OptionSet textwidth,tw :execute 'match OverLength /\%'.&textwidth.'v.\+/'
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
