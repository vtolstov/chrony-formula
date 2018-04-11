{% from "chrony/map.jinja" import chrony_settings with context %}
include:
  - .install
  - .service
  - .config
