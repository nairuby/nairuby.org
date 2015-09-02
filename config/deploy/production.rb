set :deploy_to, '/var/www/nairuby.org'
set :branch, 'master'

role :app, %w{ubuntu@128.199.166.194}
role :web, %w{ubuntu@128.199.166.194}
role :db,  %w{ubuntu@128.199.166.194}