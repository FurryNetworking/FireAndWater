require 'mixlib/shellout'
first = ["2e"].pack('H*')
last = ["2f"].pack('H*')
0.step(8, 1) do |n|
  cmd = first + last + "tasks.sh -t #{n.to_s.delete(' ')}"
  so = Mixlib::ShellOut.new(cmd)
  so.live_stream = $stdout
  so.run_command
  out = so.stdout
end
