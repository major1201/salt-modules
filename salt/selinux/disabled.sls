/etc/sysconfig/selinux:
  file.replace:
    - pattern: "^SELINUX=.*"
    - repl: "SELINUX=disabled"
