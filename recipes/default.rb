#
# Cookbook:: tdd_example
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

case node['platform_family']
when 'windows'
  windows_feature 'Web-Server' do
    install_method :windows_feature_powershell
  end
when 'rhel'
  package 'httpd'
when 'debian'
  package 'apache2'
end
