/etc/bashrc:
  file.replace:
    - pattern: "^SELINUX=.*"
    - repl: "SELINUX=permissive"
