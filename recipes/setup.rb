#
# Cookbook Name:: joerd
# Recipe:: setup
#

%w(
  apt::default
  git::default
).each do |r|
  include_recipe r
end

# packages required by joerd
%w(
  python
  python-pip
  python-gdal
  python-bs4
  python-numpy
  gdal-bin
).each do |p|
  package p
end

user_account node[:joerd][:user][:user] do
  manage_home true
  create_group node[:joerd][:user][:create_group]
  home node[:joerd][:user][:home]
  only_if { node[:joerd][:user][:enabled] }
end

directory node[:joerd][:cfg_path] do
  action :create
  recursive true
end
