set :deploy_to, '/var/www/nairuby.org'
set :branch, 'master'

role :app, %w{ubuntu@nairuby.org}
role :web, %w{ubuntu@nairuby.org}
role :db,  %w{ubuntu@nairuby.org}