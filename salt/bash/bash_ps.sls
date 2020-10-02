bash_ps:
  file:
    - managed
    - name: /etc/profile.d/bashps.sh
    - source: salt://bash/res/bashps.sh
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
