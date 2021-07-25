"----------------------------------------------------------------
"  Index:
"   1. General settings
"   2. Plugins (Plug)
"   3. Plugins settings
"   4. User interface
"   5. Scheme and colors
"   6. Files and backup
"   7. Buffers management
"   8. Tabs management
"   9. Multiple windows
"  10. Indentation tabs
"  11. Moving around lines
"  12. Paste mode
"  13. Search, vimgrep and grep
"  14. Text edition
"  15. Make settings
"  16. Filetype settings
"  17. Helper functions
"  18. External tools integration
"----------------------------------------------------------------

"----------------------------------------------------------------
" 1. General settings
"----------------------------------------------------------------
" Disable vi compatibility
if !has("nvim")
	set nocompatible
endif

" Lines of memory to remember
set history=10000

"----------------------------------------------------------------
" 2. Plugins (Plug)
"----------------------------------------------------------------

"----------------------------------------------------------------
" 3. Plugins settings
"----------------------------------------------------------------

"----------------------------------------------------------------
" 4. User interface
"----------------------------------------------------------------
" Set X lines to the cursor when moving vertically
set scrolloff=0

" Mouse
set mouse=a

" Highlight cursor line and cursor column
set cursorline
set nocursorcolumn

" Always show the status line
set laststatus=2

"----------------------------------------------------------------
" 5. Scheme and colors
"----------------------------------------------------------------
" Syntax highlighting
syntax enable

"----------------------------------------------------------------
" 6. Files and backup
"----------------------------------------------------------------
" Use UTF-8 as default encoding
set encoding=utf8

" Autoread a file when it is changed from the outside
set autoread

"----------------------------------------------------------------
" 7. Buffers management
"----------------------------------------------------------------

"----------------------------------------------------------------
" 8. Tabs management
"----------------------------------------------------------------

"----------------------------------------------------------------
" 9. Multiple windows
"----------------------------------------------------------------

"----------------------------------------------------------------
" 10. Indentation tabs
"----------------------------------------------------------------
" Enable autoindent & smartindent
set autoindent
set smartindent

" Use tabs, no spaces
set noexpandtab

" Be smart when using tabs
set smarttab

" Tab size (in spaces)
set shiftwidth=2
set tabstop=2

" Remap indentation
nnoremap <TAB> >>
nnoremap <S-TAB> <<

vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

inoremap <TAB> <C-i>
inoremap <S-TAB> <C-d>

" Don't show tabs
set list


