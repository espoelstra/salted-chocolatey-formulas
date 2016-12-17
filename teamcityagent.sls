"Install TeamCity Agent":
  chocolatey.installed:
    - name: TeamCityAgent # Salt cares about case for the moment
    - version: 2.0.1
    #- source: 'mychocolatey/source'
    #- force: True
    - package_args: 'serverurl=http://teamcity.local:8111/' #agentName, agentDir, ownPort 
