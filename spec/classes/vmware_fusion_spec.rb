require 'spec_helper'

describe 'vmware_fusion' do
  it do
    should contain_package('VMware Fusion').with({
      :source   => 'https://s3.amazonaws.com/boxen-downloads/vmware/VMware-Fusion-6.0.3-1747349-light.dmg',
      :provider => 'appdmg'
    })
  end
end

