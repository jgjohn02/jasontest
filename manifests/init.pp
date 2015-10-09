# Class: jasontest
#
# This module manages jasontest
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class jasontest {

# test 2

 dsc::lcm_config {'disable_lcm':
  refresh_mode => 'Disabled',
}->

dsc_windowsfeature {'IIS':
    dsc_ensure => 'present',
    dsc_name   => 'Web-Server',
  } 

}
