# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "strong_pm/map.jinja" import template with context %}

strong_pm_pkg:
  cmd.run:
    - name: {{ strong_pm.cmd.install }} {{ strongs_pm.lookup.init_manager_option }}
