syntax enable

filetype plugin indent on

set hidden
set history=100
set number
set encoding=UTF-8

" Busqueda
set hlsearch                          " Highlight search matches
set ignorecase
set incsearch

inoremap jk <ESC>

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let mapleader="\<Space>"

" typescript
let g:typescript_compiler_options = '--experimentalDecorators=true --noImplicitAny=true --target=ES5 --module=commonjs'

" javascript
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Status line
set laststatus=2

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
"set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c

" Ignore Wildcars
set wildignore+=*node_modules/**      " Ignore node_modules
set wildignore+=*vendor/**      
set wildignore+=.git
set wildignore+=*~,*.swp,*.swo,*.tmp

