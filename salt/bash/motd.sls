/etc/motd:
  file:
    - managed
    - source: salt://bash/res/motd
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
