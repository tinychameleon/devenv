" Much of the typical configuration is present in sensible.vim, which is
" loaded via the package manager.

" Options {{{

" Use the best colour scheme.
colorscheme solarized

" No audible bells.
set visualbell

" Perform case-sensitive searches when using upper-case characters.
set smartcase

" Fancier auto-indenting.
set smartindent

" Using <Tab> deals in shiftwidth sizes.
set smarttab

" Global writing settings to be overriden at the language level.
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=80

" Handle backup, swap, and undo files.
set nobackup
set nowritebackup
set noswapfile
set undofile
set undodir=$HOME/.vim/undo//

" Don't abandon buffers when they are taken out of view
set hidden

" Set leader keys
let mapleader = "\<Space>"

" }}}
" Functions {{{

function! TrimTrailingWhitespace()
	let l:view = winsaveview()
	keepjumps keeppatterns %s/\s\+$//e
	call winrestview(l:view)
endfunction

" }}}
" Key Mappings {{{

nnoremap <silent> <leader>fw :call TrimTrailingWhitespace()<cr>

" }}}
