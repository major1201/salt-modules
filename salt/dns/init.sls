/etc/resolv.conf:
  file:
    - managed
    - source: salt://dns/res/resolv.conf
    - user: root
    - group: root
    - mode: 644
