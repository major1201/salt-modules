/var/spool/cron/root:
  file.managed:
    - makedirs: True
    - user: root
    - group: root
    - mode: 600

ntpdate:
  file.replace:
    - name: /var/spool/cron/root
    - pattern: ".*ntpdate.*"
    - repl: "59 3 * * * /usr/sbin/ntpdate time.nist.gov"
    - append_if_not_found: True
