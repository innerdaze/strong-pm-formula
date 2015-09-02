# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "strong_pm/map.jinja" import template with context %}

strong_pm_pkg:
  cmd.run:
    - name: {{ strong-pm.cmd.install }} {{ strong-pm.lookup.init_manager_option }}
