# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "strong_pm/map.jinja" import strong_pm with context %}
strong_pm_user:
  user.present:
    - name: {{ strong_pm.lookup.user }}

strong_pm_pkg:
  npm.installed:
    - name: strongloop
    - require:
      - pkg: strong_pm_deps_npm
  cmd.run:
    - name: {{ strong_pm.cmd.install }} {{ strong_pm.lookup.init_manager_option }}
    - user: {{ strong_pm.lookup.user }}
    - cwd: {{ strong_pm.lookup.base }}
    - require:
      - pkg: strong_pm_deps_node
      - npm: strongloop
      - user: {{ strong_pm.lookup.user }}

strong_pm_deps_node:
  pkg.installed:
    - node

strong_pm_deps_npm:
  pkg.installed:
    - npm
