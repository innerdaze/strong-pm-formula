# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "strong_pm/map.jinja" import strong_pm with context %}
strong_pm_user:
  user.present:
    - name: {{ strong_pm.lookup.user }}

strong_pm_pkg:
  npm.installed:
    - name: strongloop
  cmd.run:
    - name: {{ strong_pm.cmd.install }} {{ strong_pm.lookup.init_manager_option }}
    - user: {{ strong_pm.lookup.user }}
    - cwd: {{ strong_pm.lookup.base }}
    - require:
      - npm: strongloop
      - user: {{ strong_pm.lookup.user }}
