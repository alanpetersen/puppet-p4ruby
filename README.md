# p4ruby

## Overview

This module manages the Perforce Ruby API (p4ruby) on a node.

## Requirements

This module does not install Ruby on the target system (although it does ensure that `rubygems` is installed).

## Usage

At its simplest, you can manage the p4ruby installation on your system.

`include p4ruby`

This will install the p4ruby gem. During installation of the gem, the P4 C++ API (p4api) will be downloaded and installed. If you would like to control which P4API the p4ruby gem uses, you can specify the p4api_dir parameter when declaring the p4ruby class. An example of using both the p4api and p4ruby modules together is given below:

~~~
$perforce_dir = '/opt/perforce'
$p4api_dir = "${perforce_dir}/p4api"

class { 'p4api':
  base_perforce_dir => $perforce_dir,
}

class { 'p4ruby':
  p4api_dir => $p4api_dir,
}
~~~

## Limitations

Currently, only RedHat/CentOS and Ubuntu are supported.
