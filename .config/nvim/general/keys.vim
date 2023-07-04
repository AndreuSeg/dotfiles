" Remap escape
nnoremap <C-c> <Esc>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit and save
nnoremap <C-q> :wq!<CR>

" Close current buffer
nnoremap <C-b> :bd<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Copy
vnoremap <S-c> y
" Cut: dd or numer_lines + dd
" Paste: Shift + p

" change buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + W to move up
" shift + S to move down
xnoremap W :move '<-2<CR>gv-gv
xnoremap S :move '>+1<CR>gv-gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

if !exists('g:vscode')
    " TAB in general mode will move to next buffer
    nnoremap <TAB> :bnext<CR>
    " SHIFT-TAB will go to prev buffer
    nnoremap <S-TAB> :bprevious<CR>
endif
