"Install TeamCity Agent":
  chocolatey.installed:
    - name: teamcityagent
    - version: 2.0.1-beta-05
    #- source: 'mychocolatey/source'
    #- force: True
    - package_args: {{ salt['pillar.get']('teamcity_server_url','http://localhost:8111') }} # 'serverurl=http://localhost:8111/' #agentName, agentDir, ownPort 
