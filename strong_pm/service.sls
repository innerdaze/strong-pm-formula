# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "strong_pm/map.jinja" import template with context %}

strong_pm_service:
  service.running:
    - name: {{ strong_pm.service.name }}
    - enable: True
