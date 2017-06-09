#
# Cookbook Name:: apt-get_upgrade
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 'apt-get upgrade' do
	command "apt-get upgrade"
end