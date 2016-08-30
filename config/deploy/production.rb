set :deploy_to, '/var/www/nairuby.org'
set :branch, 'master'

role :app, %w{ubuntu@192.241.248.97}
role :web, %w{ubuntu@192.241.248.97}
role :db,  %w{ubuntu@192.241.248.97}