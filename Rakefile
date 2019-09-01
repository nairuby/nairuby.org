#!/usr/bin/env ruby

##require 'html/proofer'

##task :test do
##  puts "\n## Generating Site with Jekyll"
##  system "bundle exec jekyll build"

##  puts "\n## HTML Proofing the generated site"
##  HTML::Proofer.new('./_site', alt_ignore: [/.*/]).run
## end
require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
  options = { :assume_extension => true }
  HTMLProofer.check_directory("./_site", options).run
end
