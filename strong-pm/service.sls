# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "template/map.jinja" import template with context %}

strong-pm-service:
  service.running:
    - name: {{ template.service.name }}
    - enable: True
