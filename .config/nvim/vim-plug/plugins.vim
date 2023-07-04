call plug#begin('~/.config/nvim/plugged')
    " Comment code
    Plug 'tpope/vim-commentary'

    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
    else
        " Syntax support
        Plug 'sheerun/vim-polyglot'
        " Intellisense
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Treesitter
        " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        " Autopairs
        Plug 'jiangmiao/auto-pairs'
        " File explorer
        Plug 'scrooloose/NERDTree'    
        " Icons
        Plug 'ryanoasis/vim-devicons'
        " Airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " Indent guides
        Plug 'Yggdroot/indentLine'
        " Autoclose tags
        Plug 'alvan/vim-closetag'
        " Ranger
        Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
        " post install (yarn install | npm install) then load plugin only for editing supported files
        Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    endif
call plug#end()
