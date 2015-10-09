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

  $websitename = "thisiscrazy"
  $destinationpath = 'C:\inetpub\FourthCoffee'

  dsc::lcm_config { 'disable_lcm': refresh_mode => 'Disabled', } ->
  dsc_windowsfeature { 'IIS':
    dsc_ensure => 'present',
    dsc_name   => 'Web-Server',
  }

  dsc_xwebsite { $websitename:
    dsc_ensure       => 'present',
    dsc_name         => $websitename,
    dsc_state        => 'Started',
    dsc_physicalpath => $destinationpath,
  }

}
