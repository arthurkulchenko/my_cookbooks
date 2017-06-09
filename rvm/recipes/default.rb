#
# Cookbook Name:: rvm
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'rvm' do
  # user 'root'
  # cwd '/tmp'
  code <<-EOH
  sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable

  # wget http://www.example.com/tarball.tar.gz
  # tar -zxf tarball.tar.gz
  # cd tarball
  # ./configure
  # make
  # make install
  EOH
  not_if { File.exist?('/usr/local/rvm/bin/rvm') }
end

# execute "rvm" do
#   command "sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3"
#   command "curl -sSL https://get.rvm.io | bash -s stable"
# end
