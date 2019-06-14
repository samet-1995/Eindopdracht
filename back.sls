
/etc/munin/munin.conf:
  file.managed:
    - source: salt://munin.conf
    - user: root
    - group: root
    - mode: 777
    - template: jinja
    - defaults:
      minion: "[MuninNode]
                   address 10.2.1.27
                   use_node_name yes"
