# pip file
/root/.pip/pip.conf:
  file:
    - managed
    - source: salt://python/res/pip.conf
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
