{% if grains['os_family'] == 'Arch' %}
plasma-pkgs:
  pkg:
    - installed
    - names:
      - xorg-server
      - xorg-server-utils
      - plasma-meta
      - kde-l10n-zh_cn
      {% if grains['virtual'] == 'VirtualBox' %}
      # virtualbox graphical card driver
      - xf86-video-vesa
      # vbox utils
      - virtualbox-guest-utils
      - virtualbox-guest-modules-arch
      {% endif %}
      # fonts
      - ttf-freefont
      - ttf-dejavu
      - ttf-liberation
      - adobe-source-han-sans-cn-fonts
      - adobe-source-han-sans-tw-fonts
      - ttf-arphic-ukai
      - ttf-arphic-uming
      - opendesktop-fonts
      - wqy-microhei
      - wqy-zenhei
      - wqy-bitmapfont
      # useful
      - unrar
      - ntfs-3g
      - syslog-ng
      - dolphin # file manager
      - konsole # kde console
      - kate # text editor
      # - kwrite # text editor
      - kdebase-kdepasswd
      - kdebase-kdialog
      - kdebase-keditbookmarks
      - kdebase-kfind
      - kdebase-konq-plugins
      - kdebase-konqueror
      - khelpcenter
      - rdesktop # ms remote desktop
      - firefox
      - flashplayer
      # input mothod
      - ibus
      - ibus-rime

sddm_theme:
  file.replace:
    - name: /etc/sddm.conf
    - pattern: "^Current=.*"
    - repl: 'Current=breeze'
    - append_if_not_found: True

sddm_cursor:
  file.replace:
    - name: /etc/sddm.conf
    - pattern: "^CursorTheme=.*"
    - repl: 'CursorTheme=breeze_cursors'
    - append_if_not_found: True

/root/.xprofile:
  file:
    - managed
    - source: salt://plasma/res/.xprofile
    - user: root
    - group: root
    - mode: 644
    - makedirs: True

piix4_smbus_bug:
  file:
    - managed
    - name: /etc/modprobe.d/modprobe.conf
    - source: salt://plasma/res/modprobe.conf
    - user: root
    - group: root
    - mode: 644
    - makedirs: True

firefox_config:
  file:
    - managed
    - name: /usr/lib/firefox/defaults/pref/custom-prefs.js
    - source: salt://plasma/res/custom-prefs.js
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
{% endif %}
