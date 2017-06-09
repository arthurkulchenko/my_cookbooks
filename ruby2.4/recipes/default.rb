#
# Cookbook Name:: ruby2.4
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'ruby2.4' do
  # user 'root'
  # cwd '/tmp'
  code <<-EOH
    rvm install 2.4.0-preview1
  EOH
  not_if { File.exist?('/usr/local/rvm/rubies/ruby-2.4.0-preview1/bin/ruby') }
end

# execute "ruby install" do
#   command "/usr/local/rvm/bin/rvm install 2.4.0"
# end