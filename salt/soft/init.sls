required-pkgs:
  pkg:
    - installed
    - names:
      - net-tools
      - make
      - automake
      - autoconf
      - cmake
      - gcc
      - lrzsz
      - htop
      - iotop
      - iftop
      - glances
      - nload
      - nmon
      - nethogs
      - moreutils
      - screen
      - tmux
      - tree
      - psmisc
      - python-pip
      - openssl
      - zlib
      - libtool
      - lshw
      - ack
      - bash-completion
      - zip
      - unzip
      - lftp
      {% if grains['os_family'] == 'RedHat' %}
      - deltarpm
      - gcc-c++
      - openssl-static
      - openssl-devel
      - telnet
      {% if grains['osrelease'].startswith('6') %}
      - iptraf
      {% elif grains['osrelease'].startswith('7') %}
      - iptraf-ng
      {% endif %}
      {% elif grains['os_family'] == 'Arch' %}
      
      {% endif %}
