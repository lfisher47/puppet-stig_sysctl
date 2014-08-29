puppet-stig_sysctl
==================

This module is a wrapper around the thias/sysctl module to apply the STIG rules.

===
# STIG Rules

This module addresses:
* RHEL-06-000078/SV-50397r2_rule
* RHEL-06-000079/SV-50398r2_rule
* RHEL-06-000080/SV-50401r1_rule
* RHEL-06-000081/SV-50402r1_rule
* RHEL-06-000082/SV-50312r1_rule
* RHEL-06-000083/SV-50324r1_rule
* RHEL-06-000084/SV-50325r1_rule
* RHEL-06-000086/SV-50327r1_rule
* RHEL-06-000088/SV-50329r1_rule
* RHEL-06-000089/SV-50330r1_rule
* RHEL-06-000090/SV-50333r1_rule
* RHEL-06-000091/SV-50334r2_rule
* RHEL-06-000092/SV-50336r1_rule
* RHEL-06-000093/SV-50338r1_rule
* RHEL-06-000095/SV-50340r1_rule
* RHEL-06-000096/SV-50343r1_rule
* RHEL-06-000097/SV-50345r1_rule
* RHEL-06-000099/SV-50349r2_rule

===

# Compatibility

Compatible with the following platforms.
* EL 6
* Centos 6

===

# Parameters

## `randomize_va_space`

Sets the default value for the sysctl parameter kernel.randomize_va_space to 2.

## `exec_shield`

Sets the default value for the sysctl parameter kernel.exec-shield to 1.

## `default_send_redirects`

Sets the default value for the sysctl parameter net.ipv4.conf.default.send_redirects to 0.

## `all_send_redirects`

Sets the default value for the sysctl parameter net.ipv4.conf.all.send_redirects to 0.

## `ip_forward`

Sets the default value for the sysctl parameter net.ipv4.ip_forward to 0.

## `all_accept_source_route`

Sets the default value for the sysctl parameter net.ipv4.conf.all.accept_source_route to 0.

## `all_accept_redirects`

Sets the default value for the sysctl parameter net.ipv4.conf.all.accept_redirects to 0.

## `all_secure_redirects`

Sets the default value for the sysctl parameter net.ipv4.conf.all.secure_redirects to 0.

## `log_martians`

Sets the default value for the sysctl parameter net.ipv4.conf.default.log_martians to 1.

## `default_accept_source_route`

Sets the default value for the sysctl parameter net.ipv4.conf.default.accept_source_route to 0.

## `default_accept_redirects`

Sets the default value for the sysctl parameter net.ipv4.conf.default.accept_redirects to 0.

## `default_secure_redirects`

Sets the default value for the sysctl parameter net.ipv4.conf.default.secure_redirects to 0.

## `icmp_echo_ignore_broadcasts`

Sets the default value for the sysctl parameter net.ipv4.icmp_echo_ignore_broadcasts to 1.

## `icmp_ignore_bogus_error_responses`

Sets the default value for the sysctl parameter net.ipv4.icmp_ignore_bogus_error_responses to 1.

## `tcp_syncookies`

Sets the default value for the sysctl parameter net.ipv4.tcp_syncookies to 1.

## `all_rp_filter`

Sets the default value for the sysctl parameter net.ipv4.conf.all.rp_filter to 1.

## `default_rp_filter`

Sets the default value for the sysctl parameter net.ipv4.conf.default.rp_filter to 1.

## `ipv6_default_accept_redirects`

Sets the default value for the sysctl parameter net.ipv6.conf.default.accept_redirects to 0.  This can only be set if the ipv6 kernel module is enabled.

## `suid_dumpable`

Sets the default value for the sysctl parameter fs.suid_dumpable to 0.

## `ipv6_enabled`

This variable is tells the module whether to set the ipv6 parameters since if the system has ipv6 turned off in the kernel, the ipv6 sysctl parameters will throw an error as they don't exist.
