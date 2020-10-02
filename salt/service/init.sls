disable-services:
  service.dead:
    - names:
      - abrt-ccpp
      - abrt-oops
      - abrt-vmcore
      - abrt-xorg
      - abrtd
      - acpid
      - atd
      - auditd
      - blk-availability
      - chronyd
      - cpuspeed
      - cups
      - iptables
      - ip6tables
      - kdump
      - lvm2-monitor
      - mdmonitor
      - ntpd
      - postfix
      - restorecond
      - dbus-org.fedoraproject.FirewallD1.service
      - firewalld
      - lvm2-monitor
    - enable: False

enable-services:
  service.running:
    - names:
      - sshd
      - sddm
      - syslog-ng
    - enable: True
