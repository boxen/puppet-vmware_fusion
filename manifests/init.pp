# Public: Install VMware Fusion.
#         This does not include any license, and you must provide your own.
#         By installing VMware Fusion, you accept its Terms of Service.
#
# Usage:
#
#   include vmware_fusion
class vmware_fusion (
  $url_base = 'https://s3.amazonaws.com/boxen-downloads/vmware',
  $version  = '7.0.0-2103067',
) {
  $_version = $version ? {
    /^7/    => $version,
    default => "${version}-light",
  }

  $url = "${url_base}/VMware-Fusion-${_version}.dmg"

  package { 'VMware Fusion':
    source   => $url,
    provider => 'appdmg'
  }
}
