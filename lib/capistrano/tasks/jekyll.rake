namespace :jekyll do
  # Remove the config dir and Capfile, and run jekyll build
  task :build do
    on roles(:app) do
      execute "rm -rf #{release_path}/config #{release_path}/Capfile"
      execute "cd #{release_path} && (~/.rvm/bin/rvm ruby-2.2.1@rails4 do jekyll build)"
    end
  end
end

after "deploy:finishing", "jekyll:build"
