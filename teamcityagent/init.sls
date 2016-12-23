"Install TeamCity Agent":
  chocolatey.installed:
    - name: teamcityagent
    {% set tc_version = salt['pillar.get']('teamcityagent:version') %}
    {% if tc_version != None %}
    - version: {{ tc_version }}
    {% endif %}
    #- source: 'mychocolatey/source'
    #- force: True # Needed if you run two agents on one machine
    - package_args: {{ salt['pillar.get']('teamcityagent:package_args','serverurl=http://localhost:8111')|join(' ')}} 
