# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "strong_pm/map.jinja" import strong_pm with context %}

strong_pm_pkg:
  cmd.run:
    - name: {{ strong_pm.cmd.install }} {{ strong_pm.lookup.init_manager_option }}
