#!/usr/bin/env ruby

require 'html-proofer'

task :build do
    system("bundle exec jekyll build")
end

task :test => :build do
  options = {
      :assume_extension => true,
      :empty_alt_ignore => true
  }

  HTMLProofer.check_directory("./_site", options).run
end








