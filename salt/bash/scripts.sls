{% if grains['os_family'] == 'RedHat' %}
rpmlist:
  file:
    - managed
    - name: /usr/local/bin/rpmlist
    - source: salt://bash/res/rpmlist.py
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
{% endif %}

quichttp:
  file:
    - managed
    - name: /usr/local/bin/quichttp
    - source: salt://bash/res/quichttp.py
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
