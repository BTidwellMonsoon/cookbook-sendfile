#
# Cookbook Name:: sendfile
# Recipe:: default
#
# Copyright 2013, Monsoon Co
#
# All rights reserved - Do Not Redistribute
#

template "sendfile.conf" do
  case node['platform_family']
  when "rhel", "fedora", "arch"
    path "#{node['apache']['dir']}/conf.d/sendfile.conf"
  when "debian"
    path "#{node['apache']['dir']}/sendfile.conf"
  when "freebsd"
    path "#{node['apache']['dir']}/sendfile.conf"
  end
  source "sendfile.conf"
  owner "root"
  group node['apache']['root_group']
  mode 00644
  notifies :restart, "service[apache2]"
end
