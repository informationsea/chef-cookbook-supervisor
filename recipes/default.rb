#
# Cookbook Name:: supervisor
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "python"

python_pip "supervisor"

template "/etc/init.d/supervisord" do
  owner "root"
  group "root"
  mode 0700
end

template "/etc/supervisord.conf" do
  owner "root"
  group "root"
  mode 0600
  notifies :reload, 'service[supervisord]'
end

directory "/etc/supervisor.d" do
  owner "root"
  group "root"
  mode 0700
end
  

service "supervisord" do
  action [ :enable, :start ]
  supports :status => true, :restart => true, :reload => true
end
