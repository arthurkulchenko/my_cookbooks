#
# Cookbook Name:: ruby2.3
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "rails 5" do
  command "gem install rails --pre"
  not_if { File.exist?('/usr/local/rvm/gems/ruby-2.3.0/bin/rails') }
end