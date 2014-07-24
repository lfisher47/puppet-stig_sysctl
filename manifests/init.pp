class stig_sysctl {

  sysctl::base { purge => true }

  #RHEL-06-000078
  sysctl { 'kernel.randomize_va_space': value => '2' }
  #RHEL-06-000079
  sysctl { 'kernel.exec-shield': value => '1' }
  #RHEL-06-000080
  sysctl { 'net.ipv4.conf.default.send_redirects': value => '0' }
  #RHEL-06-000081
  sysctl { 'net.ipv4.conf.all.send_redirects': value => '0' }
  #RHEL-06-000082
  sysctl { 'net.ipv4.ip_forward': value => '0' }
  #RHEL-06-000083
  sysctl { 'net.ipv4.conf.all.accept_source_route': value => '0' }
  #RHEL-06-000084
  sysctl { 'net.ipv4.conf.all.accept_redirects': value => '0' }
  #RHEL-06-000086
  sysctl { 'net.ipv4.conf.all.secure_redirects': value => '0' }
  #RHEL-06-000088
  sysctl { 'net.ipv4.conf.all.log_martians': value => '1' }
  #RHEL-06-000089
  sysctl { 'net.ipv4.conf.default.accept_source_route': value => '0' }
  #RHEL-06-000090
  sysctl { 'net.ipv4.conf.default.secure_redirects': value => '0' }
  #RHEL-06-000091
  sysctl { 'net.ipv4.conf.default.accept_redirects': value => '0' }
  #RHEL-06-000092
  sysctl { 'net.ipv4.icmp_echo_ignore_broadcasts': value => '1' }
  #RHEL-06-000093
  sysctl { 'net.ipv4.icmp_ignore_bogus_error_responses': value => '1' }
  #RHEL-06-000095
  sysctl { 'net.ipv4.tcp_syncookies': value => '1' }
  #RHEL-06-000096
  sysctl { 'net.ipv4.conf.all.rp_filter': value => '1' }
  #RHEL-06-000097
  sysctl { 'net.ipv4.conf.default.rp_filter': value => '1' }
  #RHEL-06-000099
  sysctl { 'net.ipv6.conf.default.accept_redirects': value => '0' }
  
}
