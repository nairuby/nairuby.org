set :deploy_to, '/var/www/nairuby.org'
set :branch, 'master'

role :app, %w{ubuntu@128.199.198.38}
role :web, %w{ubuntu@128.199.198.38}
role :db,  %w{ubuntu@128.199.198.38}