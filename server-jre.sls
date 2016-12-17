"Install Server-Jre meta-package":
  chocolatey.installed:
    - name: server-jre
    - version: 8.0.112 #-machinebeta1
    #- source: 'mychocolatey/source'
    #- force: True
    - package_args: /Machine /Force #Can remove Machine when new release goes
