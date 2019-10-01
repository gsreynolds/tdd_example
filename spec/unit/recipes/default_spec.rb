#
# Cookbook:: tdd_example
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'tdd_example::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    describe 'installs apache2' do
      it { is_expected.to install_package('apache2') }
    end
  end

  context 'When all attributes are default, on CentOS 7' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'centos', '7'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    describe 'installs httpd' do
      it { is_expected.to install_package('httpd') }
    end
  end

  context 'When all attributes are default, on Windows' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'windows', '2016'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    describe 'install Web-Server feature' do
      it { is_expected.to install_windows_feature('Web-Server') }
    end
  end
end
