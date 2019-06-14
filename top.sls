install/monitoring_logserver_update:
  pkg.installed:
    - pkgs:
      - munin
      - rsyslog

/etc/rsyslog.conf:
  file.managed:
    - source: salt://rsyslogm.conf
    - user: root
    - group: root
    - mode: 777
    - template: jinja
    - defaults:
      master: "@10.2.1.5"

/etc/munin-node.conf:
  file.managed:
    - source: salt://muninm.conf
    - user: root
    - group: root
    - mode: 777
    - template: jinja
    - defaults:
      master: "10/.2/.1/.5"
