install/monitoring_logserver_update:
  pkg.installed:
    - pkgs:
      - munin
      - rsyslog

/etc/rsyslog.conf:
  file.managed:
    - source: salt://rsyslogserver.conf
    - user: root
    - group: root
    - mode: 777

/etc/munin-node.conf:
  file.managed:
    - source: salt://muninminion.conf
    - user: root
    - group: root
    - mode: 777
