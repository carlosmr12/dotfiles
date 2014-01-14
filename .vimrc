"---------------------------------------------------------------------------
"       C/C++
set makeprg=g++\ -Wall\ -Wextra\ -Wconversion\ -o\ %<\ % "Compile .c files 
"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
"       PYTHON
map !! :s/^\(\s*\)/\1#<CR>:nohlsearch<CR>
" " comment (current line or selected lines (in visual mode))
map -- :s/^\(\s*\)#/\1/<CR>:nohlsearch<CR>
" uncomment (current line or selected lines (in visual mode))
"---------------------------------------------------------------------------

set incsearch       " Incremental search
"set autowrite      " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned                  
set mouse=a     " Enable mouse usage (all modes)
set autoindent      " Identation
set tabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline
set cursorcolumn

colorscheme wombat

map <Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

execute pathogen#infect()
