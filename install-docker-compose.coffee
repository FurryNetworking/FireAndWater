{spawn} = require 'child_process'
ls = spawn 'apt', ['install', 'docker-compose', '-n',]
# receive all output and process
ls.stdout.on 'data', (data) -> console.log data.toString().trim()
# receive error messages and process
ls.stderr.on 'data', (data) -> console.log data.toString().trim()
