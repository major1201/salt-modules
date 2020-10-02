{% if grains['os_family'] == 'RedHat' %}
/etc/yum.repos.d/CentOS-Base.repo:
  file:
    - managed
    - source: salt://repo/res/CentOS-Base.repo
    - user: root
    - group: root
    - mode: 644
    - template: jinja

/etc/yum.repos.d/epel.repo:
  file:
    - managed
    - source: salt://repo/res/epel.repo
    - user: root
    - group: root
    - mode: 644
    - template: jinja

{% elif grains['os_family'] == 'Arch' %}
/etc/pacman.d/mirrorlist:
  file:
    - managed
    - source: salt://repo/res/archmirrorlist
    - user: root
    - group: root
    - mode: 644
    - template: jinja
{% endif %}
