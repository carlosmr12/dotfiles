
"---------------------------------------------------------------------------
" MAP TRICKS
"disable arrow keys - cc Gagu
noremap <Up>    :echo "YOU NOOB!"<cr>
noremap <Down>  :echo "YOU NOOB!"<cr>
noremap <Left>  :echo "YOU NOOB!"<cr>
noremap <Right> :echo "YOU NOOB!"<cr>

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
set hlsearch 
"set autowrite      " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned                  
set mouse=a     " Enable mouse usage (all modes)
set autoindent      " Identation
set tabstop=4
set smarttab
set shiftwidth=4
set expandtab
set number
set cursorline
set cursorcolumn
set nowrap

map <Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

execute pathogen#infect()

if isdirectory(expand($HOME . "/.vim/bundle/vim-colors-solarized/"))
    if has('gui_running')
        set background=light
    else
        set background=dark
    endif
    let g:solarized_termcolors=256
    set t_Co=16
    colorscheme solarized
endif


"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note-> usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"


"Fuzzy sile search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Configurações do vim-airline
if isdirectory(expand($HOME . "/.vim/bundle/vim-airline/"))
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    let g:airline_theme = "powerlineish"
    set laststatus=2
endif

