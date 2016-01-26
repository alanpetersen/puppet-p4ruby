#
class p4ruby::params {

  case $::osfamily {
    'redhat': {
      $gcc_package      = 'gcc-c++'
      $ruby_dev_package = 'ruby-devel'
    }
    'debian': {
      $gcc_package      = 'gcc'
      $ruby_dev_package = 'ruby-dev'
    }
    default: {
      fail("Sorry, ${::osfamily} is not currently suppported by the gitswarm module")
    }
  }



}
