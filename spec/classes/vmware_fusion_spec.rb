require 'spec_helper'

describe 'vmware_fusion' do
  it do
    should contain_package('VMware Fusion').with({
      :source   => 'https://s3.amazonaws.com/boxen-downloads/vmware/VMware-Fusion-5.0.3-1040386-light.dmg',
      :provider => 'appdmg_eula'
    })
  end
end

