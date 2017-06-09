#
# Cookbook Name:: http2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "http2" do
  command "wget http://nginx.org/patches/http2/patch.http2.txt"
  command "patch -p1 --dry-run < patch.http2.txt"
  command "patch -p1 < patch.http2.txt"
  # command " ./configure --with-http_ssl_module \
  #             --with-http_v2_module \
  #             --with-debug \
  #             --with-openssl=/path/to/openssl-1.0.2 \
  #             ..."
end