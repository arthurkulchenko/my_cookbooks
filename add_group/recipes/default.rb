#
# Cookbook Name:: add_group
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "add_group" do
  command "groupadd deployers"
end