namespace :jekyll do
  # Remove the config dir and Capfile, and run jekyll build
  task :build do
    on roles(:app) do
      run "rm -rf #{release_path}/config #{release_path}/Capfile"
      run "cd #{release_path} && jekyll build"
    end
  end
end

after "deploy:finishing", "jekyll:build"
