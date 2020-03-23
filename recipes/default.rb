#
# Cookbook:: beats_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'apt'
apt_update 'update_sources' do
  action :update
end

apt_update "update" do
  action :update
end

execute 'download_metricbeat' do
  command 'curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.6.1-amd64.deb'
end

execute 'install_metricbeat' do
  command 'sudo dpkg -i metricbeat-7.6.1-amd64.deb'
end

execute 'download_filebeat' do
  command 'curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.6.1-amd64.deb'
end

execute 'install_filebeat' do
  command 'sudo dpkg -i filebeat-7.6.1-amd64.deb'
end
