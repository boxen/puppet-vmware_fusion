# VMware Fusion for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-vmware_fusion.png?branch=master)](https://travis-ci.org/boxen/puppet-vmware_fusion)

Installs VMware Fusion.
Does not include a VMware Fusion license, which you must acquire from VMware.
By installing, you agree to the VMware Fusion Terms of Service and all that.

## Usage:

``` puppet
include vmware_fusion
```

**Note**: While this installs VMware Fusion.app from their DMG, you need to
run VMware Fusion so the installation completes.

## Specifying a version

If you want to use Fusion 5, you can specify a version:

``` puppet
class { 'vmware_fusion': version => '5.0.3-1040386' }
```

or in hiera

``` yaml
"vmware_fusion::version": "5.0.3-1040386"
```
