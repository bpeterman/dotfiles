set runtimepath+=~/.vim_config

source ~/.vim_config/vimrcs/basic.vim
source ~/.vim_config/vimrcs/filetypes.vim
source ~/.vim_config/vimrcs/plugins_config.vim
source ~/.vim_config/vimrcs/extended.vim

try
source ~/.vim_config/my_configs.vim
catch
endtry
