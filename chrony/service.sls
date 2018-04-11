{% from "chrony/map.jinja" import chrony_settings with context %}
include:
  - .config

chrony_service:
  service.running:
    - enable: True
    - name: {{ chrony_settings.service }}
    - require:
      - pkg: {{ chrony_settings.package }}
