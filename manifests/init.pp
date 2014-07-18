# Public: Install VMware Fusion.
#         This does not include any license, and you must provide your own.
#         By installing VMware Fusion, you accept its Terms of Service.
#
# Usage:
#
#   include vmware_fusion
class vmware_fusion (
  $version = '6.0.3-1747349'
) {
  package { 'VMware Fusion':
    source   => "https://s3.amazonaws.com/boxen-downloads/vmware/VMware-Fusion-${version}-light.dmg",
    provider => 'appdmg'
  }
}
