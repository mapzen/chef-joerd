#
# Cookbook Name:: joerd
# Recipe:: default
#

%w(
  joerd::setup
  joerd::install
).each do |r|
  include_recipe r
end
