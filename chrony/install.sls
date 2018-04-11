{% from "chrony/map.jinja" import chrony_settings with context %}

chrony_package:
  pkg.installed:
    - name: {{ chrony_settings.package }}
