{spawn} = require 'child_process'
ls = spawn 'docker', [
  'network',
  'create',
  '--driver=bridge',
  '--subnet=10.10.10.0/24',
  '--gateway=10.10.10.1',
  'matrix_net']
# receive all output and process
ls.stdout.on 'data', (data) -> console.log data.toString().trim()
# receive error messages and process
ls.stderr.on 'data', (data) -> console.log data.toString().trim()
