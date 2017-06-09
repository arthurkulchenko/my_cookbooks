#
# Cookbook Name:: add_user
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user 'deployer' do
  comment 'user for deploying'
  # password 'hellogoga2'
end
# execute "add_user" do
# 	only_if command "useradd deployer -g deployers -m -p deployerdeploys"
# end