class stig_sysctl (
  $randomize_va_space                = '2',
  $exec_shield                       = '1',
  $default_send_redirects            = '0',
  $all_send_redirects                = '0',
  $ip_forward                        = '0',
  $all_accept_source_route           = '0',
  $all_accept_redirects              = '0',
  $all_secure_redirects              = '0',
  $log_martians                      = '1',
  $default_accept_source_route       = '0',
  $default_accept_redirects          = '0',
  $default_secure_redirects          = '0',
  $icmp_echo_ignore_broadcasts       = '1',
  $icmp_ignore_bogus_error_responses = '1', 
  $tcp_syncookies                    = '1',
  $all_rp_filter                     = '1',
  $default_rp_filter                 = '1',
  $ipv6_default_accept_redirects     = '0',
  $suid_dumpable                     = '0',
  $ipv6_enabled                      = false,
)
{

  
  validate_bool($ipv6_enabled)

  #RHEL-06-000078
  sysctl { 'kernel.randomize_va_space': value => $randomize_va_space }
  #RHEL-06-000079
  sysctl { 'kernel.exec-shield': value => $exec_shield }
  #RHEL-06-000080
  sysctl { 'net.ipv4.conf.default.send_redirects': value => $default_send_redirects }
  #RHEL-06-000081
  sysctl { 'net.ipv4.conf.all.send_redirects': value => $all_send_redirects }
  #RHEL-06-000082
  sysctl { 'net.ipv4.ip_forward': value => $ip_forward }
  #RHEL-06-000083
  sysctl { 'net.ipv4.conf.all.accept_source_route': value => $all_accept_source_route }
  #RHEL-06-000084
  sysctl { 'net.ipv4.conf.all.accept_redirects': value => $all_accept_redirects }
  #RHEL-06-000086
  sysctl { 'net.ipv4.conf.all.secure_redirects': value => $all_secure_redirects }
  #RHEL-06-000088
  sysctl { 'net.ipv4.conf.all.log_martians': value => $log_martians }
  #RHEL-06-000089
  sysctl { 'net.ipv4.conf.default.accept_source_route': value => $default_accept_source_route }
  #RHEL-06-000090
  sysctl { 'net.ipv4.conf.default.secure_redirects': value => $default_secure_redirects }
  #RHEL-06-000091
  sysctl { 'net.ipv4.conf.default.accept_redirects': value => $default_accept_redirects }
  #RHEL-06-000092
  sysctl { 'net.ipv4.icmp_echo_ignore_broadcasts': value => $icmp_echo_ignore_broadcasts }
  #RHEL-06-000093
  sysctl { 'net.ipv4.icmp_ignore_bogus_error_responses': value => $icmp_ignore_bogus_error_responses }
  #RHEL-06-000095
  sysctl { 'net.ipv4.tcp_syncookies': value => $tcp_syncookies }
  #RHEL-06-000096
  sysctl { 'net.ipv4.conf.all.rp_filter': value => $all_rp_filter }
  #RHEL-06-000097
  sysctl { 'net.ipv4.conf.default.rp_filter': value => $default_rp_filter }
  if $ipv6_enabled {
  #RHEL-06-000099
    sysctl { 'net.ipv6.conf.default.accept_redirects': value => $ipv6_default_accept_redirects }
  }
  #2.2.4.2
  sysctl { 'fs.suid_dumpable': value => $suid_dumpable }
  
}
