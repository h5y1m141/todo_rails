# path
app_path = '/myapp'
worker_processes 3
timeout 15
preload_app true
# listen "#{app_path}/tmp/unicorn.sock"
# pid "#{app_path}/tmp/unicorn.pid"
pid "/var/run/unicorn.pid"
listen "/tmp/sockets/unicorn.sock"
# before_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
#     Process.kill 'QUIT', Process.pid
#   end

#   defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.connection.disconnect!
# end

# after_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
#   end

#   defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.establish_connection
# end

# logging
stdout_path "#{app_path}/log/unicorn.stdout.log"
stderr_path "#{app_path}/log/unicorn.stderr.log"
