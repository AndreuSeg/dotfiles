" General
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/keys.vim

if exists('g:vscode')
    source $HOME/.config/nvim/vscode/settings.vim
else
    " Plugins
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/explorer.vim
    source $HOME/.config/nvim/plug-config/nerdtree.vim
    source $HOME/.config/nvim/plug-config/vim-closetag.vim
    source $HOME/.config/nvim/plug-config/vim-commentary.vim
    source $HOME/.config/nvim/plug-config/rnvimr.vim
    source $HOME/.config/nvim/general/colors.vim
    source $HOME/.config/nvim/themes/airline.vim
    " luafile $HOME/.config/nvim/plug-config/nvim-treeseter.lua
endif
