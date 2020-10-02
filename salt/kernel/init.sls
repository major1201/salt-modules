fs.file-max:
  sysctl.present:
    - value: 100000

fs.inotify.max_user_watches:
  sysctl.present:
    - value: 50000000

fs.inotify.max_queued_events:
  sysctl.present:
    - value: 327679

fs.inotify.max_user_instances:
  sysctl.present:
    - value: 128

kernel.sched_autogroup_enabled:
  sysctl.present:
    - value: 0

kernel.sysrq:
  sysctl.present:
    - value: 1

vm.swappiness:
  sysctl.present:
    - value: 5

net.ipv6.conf.all.disable_ipv6:
  sysctl.present:
    - value: 1

net.ipv6.conf.default.disable_ipv6:
  sysctl.present:
    - value: 1

net.ipv6.conf.lo.disable_ipv6:
  sysctl.present:
    - value: 1

net.ipv4.ip_local_port_range:
  sysctl.present:
    - value: 1024 65535

net.ipv4.tcp_tw_recycle:
  sysctl.present:
    - value: 1

net.ipv4.tcp_tw_reuse:
  sysctl.present:
    - value: 1

net.core.rmem_max:
  sysctl.present:
    - value: 16777216
net.core.wmem_max:
  sysctl.present:
    - value: 16777216

net.ipv4.tcp_max_syn_backlog:
  sysctl.present:
    - value: 4096

net.ipv4.tcp_syncookies:
  sysctl.present:
    - value: 1
