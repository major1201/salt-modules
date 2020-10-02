alias:
  file:
    - managed
    - name: /etc/profile.d/alias.sh
    - source: salt://bash/res/alias.sh
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
