# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "template/map.jinja" import template with context %}

strong-pm-pkg:
  cmd.run:
    - name: {{ strong-pm.cmd.install }} {{ strong-pm.lookup.init_manager_option }}