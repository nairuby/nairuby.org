# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'nairuby.org'
set :repo_url, 'git@github.com:nairuby/nairuby.github.io.git'

# Remove the config dir and Capfile, and run jekyll build
after "deploy:symlink:shared" do
  run "rm -rf #{release_path}/config #{release_path}/Capfile"
  run "cd #{release_path} && jekyll build"
end
