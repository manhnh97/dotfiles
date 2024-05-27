if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    au VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'terryma/vim-expand-region'
Plug 'rstacruz/vim-closer'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'cormacrelf/vim-colors-github'

call plug#end()

runtime ftplugin/man.vim
colorscheme github

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

cnoreabbrev q qa
nnoremap <S-Tab> :bp<CR>
nnoremap <Tab> :bn<CR>
nnoremap H 0
nnoremap L A
nnoremap j gj
nnoremap k gk
nnoremap g= mvgg=G`g
noremap ; :
vmap <BS> <gv
vmap <TAB> >gv
xnoremap p pgvy

set backspace=indent,eol,start
set hlsearch
set incsearch
set ignorecase
set smartcase
set number relative
set undofile
set undolevels=1000
set undoreload=1000
set breakindent
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus
set noswapfile
set backupdir=~/.config/vim/tmp/backups/
set undodir=~/.config/vim/tmp/undo/
set synmaxcol=150
set keywordprg=:Man

if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), 'p')
endif

if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), 'p')
endif

augroup bacon
     au FileType man nnoremap <buffer> K :bd<cr>
     au BufWritePre [:;]* throw 'Forbidden file name: ' . expand('<afile>')
     au BufWritePre * :%s/\s\+$//e
     au BufEnter *.txt  setlocal colorcolumn=80 virtualedit=all
     au BufEnter *.txt  highlight ColorColumn ctermbg=1 guibg=red
augroup END

set signcolumn=yes
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_sign_column_always = 1
let g:ale_linters_explicit = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
