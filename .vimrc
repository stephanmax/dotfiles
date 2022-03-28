" Basic
set nocompatible
set hidden

" Make active window more obvious
highlight StatusLineNC cterm=bold ctermfg=white ctermbg=darkgray

" IDE
syntax enable
filetype plugin indent on
set tabstop=2
set shiftwidth=0
set expandtab
set number
set hlsearch incsearch

" Finding Files
set wildmenu
set wildmode=full

" Mappings

" Disable highlight search
nnoremap <esc><esc> :noh<return><esc>

" Borrowed from https://github.com/tpope/vim-unimpaired
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" %% - Expands to path of active buffer in command-line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Searching
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>

" Replace grep with ripgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

