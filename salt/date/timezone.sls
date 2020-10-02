/etc/localtime:
  file.symlink:
    - target: /usr/share/zoneinfo/Asia/Shanghai
    - force: True
    - user: root
    - group: root
    - mode: 777
