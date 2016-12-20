"Install TeamCity Agent":
  chocolatey.installed:
    - name: teamcityagent
    - version: 2.0.1-beta-05
    #- source: 'mychocolatey/source'
    #- force: True
    - install_args: 'serverurl=http://localhost:8111/' #agentName, agentDir, ownPort 
