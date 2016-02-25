#
# Cookbook Name:: joerd
# Recipe:: install
#

template "#{node[:joerd][:cfg_path]}/#{node[:joerd][:cfg_file]}" do
  source 'joerd-config.yaml.erb'
end

template "#{node[:joerd][:cfg_path]}/#{node[:joerd][:logging_file]}" do
  source 'joerd-logging.conf.erb'
end

# pip install base requirements
file node[:joerd][:pip_requirements_location] do
  content node[:joerd][:pip_requirements].join("\n")
end

execute 'pip_install' do
  command "pip install -U -r #{node[:joerd][:pip_requirements_location]}"
end
