{% from "chrony/map.jinja" import chrony with context %}

chrony:
  pkg.installed:
    - name: {{ chrony.package }}
  service.running:
    - enable: True
    - name: {{ chrony.service }}
    - require:
      - pkg: {{ chrony.package }}

chrony_config:
  file.managed:
    - name: {{ chrony.config }}
    - source: {{ chrony.config_src }}
    - template: jinja
    - user: root
    - mode: 644
    - watch_in:
      - service: {{ chrony.service }}

