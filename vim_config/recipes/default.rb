#
# Cookbook Name:: vim_config
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

script "vim_config" do
  # user 'root'
# cwd ::File.dirname(src_filepath)
  code <<-EOH
    echo "set nu" >> /etc/vimrc
    echo "set ruler" >> /etc/vimrc
    echo "syntax on" >> /etc/vimrc
    echo "filetype on" >> /etc/vimrc
    echo "filetype indent on" >> /etc/vimrc
    echo "filetype plugin on" >> /etc/vimrc
    echo "set tabstop=4" >> /etc/vimrc
    echo "set confirm" >> /etc/vimrc
    echo "set wrap" >> /etc/vimrc
    echo "set linebreak" >> /etc/vimrc
    echo "set mouse=a" >> /etc/vimrc
    echo "set mousehide" >> /etc/vimrc
    echo "set showcmd" >> /etc/vimrc
    echo "set t_Co=256" >> /etc/vimrc
    echo "set guifont=Courier\ 14" >> /etc/vimrc
    echo "function! RemoveTrailingSpaces()" >> /etc/vimrc
    echo "  normal! mzHmy" >> /etc/vimrc
    echo "  execute '%s:\s\+\$::ge'" >> /etc/vimrc
    echo "  normal! 'yzt`z" >> /etc/vimrc
    echo "endfunction" >> /etc/vimrc
    touch /home/.vimconfigflagpleasedonotdelete
  EOH
  not_if { File.exist?('/home/.vimconfigflagpleasedonotdelete') }

end