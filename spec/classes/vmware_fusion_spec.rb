require 'spec_helper'

describe 'vmware_fusion' do
  context "VMWare Fusion < 7" do
    let(:params) { { :version  => '6.0.2-1398658' } }
    it do
      should contain_package('VMware Fusion').with({
        :source   => 'https://s3.amazonaws.com/boxen-downloads/vmware/VMware-Fusion-6.0.2-1398658-light.dmg',
        :provider => 'appdmg'
      })
    end
  end

  context "VMWare Fusion 7" do
    let(:params) { { :version  => '7.0.0-2103067' } }
    it do
      should contain_package('VMware Fusion').with({
        :source   => 'https://s3.amazonaws.com/boxen-downloads/vmware/VMware-Fusion-7.0.0-2103067.dmg',
        :provider => 'appdmg'
      })
    end
  end
end
