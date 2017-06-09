#
# Cookbook Name:: ufw
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'ufw' do
  action :install
end
service 'nginx' do
  # action [ :enable, :start ]
end
# script 'ufw_config' do 
  
# end