#
# Cookbook Name:: joerd
# Recipe:: processor
#

# supervise the joerd process with runit

include_recipe 'joerd::install'

include_recipe 'runit::default'

runit_service 'joerd' do
  action          [:enable]
  log             true
  default_logger  true
  sv_timeout      node[:joerd][:runit][:timeout]
end
