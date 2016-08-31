set :deploy_to, '/var/www/nairuby.org'
set :branch, 'master'

role :app, %w{ubuntu@52.36.134.184}
role :web, %w{ubuntu@52.36.134.184}
role :db,  %w{ubuntu@52.36.134.184}