# config valid only for current version of Capistrano
lock '3.4.0'

set :user, "ubuntu"
set :application, 'nairuby.github.io'
set :repo_url, 'git@github.com:nairuby/nairuby.github.io.git'
set :rvm_type, :user                     # Defaults to: :auto
set :rvm_ruby_version, 'ruby-2.2.1@default'      # Defaults to: 'default'
set :default_stage, "production"

set :log_level, :debug
set :ssh_options, {forward_agent: true}
set :use_sudo, true

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  desc 'Run jekyll to update site before uploading'
  task :update_jekyll do
    on roles(:app) do
      # clear existing _site
      # build site using jekyll
      # remove Capistrano stuff from build
      execute "cd #{release_path} && rm -rf _site/* && jekyll build && rm _site/Capfile && rm -rf _site/config"
    end
  end
end

before 'deploy:updating', 'deploy:update_jekyll'

