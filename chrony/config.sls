{% from "chrony/map.jinja" import chrony_settings with context %}
{% set os_family = salt['grains.get']('os_family', None) %}

include:
  - .install
  - .service

chrony_config:
  file.managed:
    - name: {{ chrony_settings.config }}
    - source: {{ chrony_settings.config_src }}
    - template: jinja
    - user: root
    - mode: '0644'
    - context:
      settings: {{ chrony_settings.settings|json }}
    - require:
      - pkg: {{ chrony_settings.package }}
    - watch_in:
      - service: chrony
