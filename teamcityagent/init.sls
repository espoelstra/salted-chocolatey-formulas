"Install TeamCity Agent":
  chocolatey.installed:
    - name: teamcityagent
    {% set tc_version = salt['pillar.get']('chocolatey_packages:teamcityagent:version') %}
    {% if tc_version != None %}
    - version: {{ tc_version }}
    {% endif %}
    #- source: 'mychocolatey/source'
    #- force: True # Needed if you run two agents on one machine
    {% set package = 'teamcityagent' %}
    {% set args = salt['pillar.get']('chocolatey_packages:'~package~':package_args','serverurl=http://localhost:8111')|join(' ') %} 
    {% if args != None %}
    - package_args: {{ args }}
    {% endif %}
