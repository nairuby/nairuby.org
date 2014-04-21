##Preamble
The **Nairobi Ruby Brigade** or **nairuby** or **nai.rb**, is a
User group for Ruby programmers based in [Nairobi, Kenya][nairobi-kenya-map]. We would like to welcome all programmers that are interested in the Ruby language, tools, libraries and frameworks.

We have been meeting since August 2011 for presentations, demos and discussions applicable
across various skill levels from beginner to advanced.

This repository contains the source code for our website[nairuby.org][nairuby] and is powered by [Jekyll][jekyll], a static site generator.

###Setup
Assuming that you have Ruby installed on your machine,
Install Jekyll

`gem install jekyll`

clone the repository using git (see for git installation)

`git clone git@github.com:Nairuby/nairuby.github.io.git`

Change the directory to nairuby.github.io

`cd nairuby.github.io`

Run a local copy of the website

`jekyll serve --watch --safe --trace`

Point your web browser to localhost

`http://localhost:4000`

To run Jekyll such that you match [GitHub Pages][github-pages] build server (useful for
debugging), run Jekyll with [Bundler][bundler].

`bundle exec jekyll serve --watch --safe --trace`

For more comprehensive information, visit [nairuby.org] [nairuby].

[bundler]: http://bundler.io/
[github-pages]: https://pages.github.com/
[ror]: http://rubyonrails.org/
[jekyll]: http://jekyllrb.com/
[nairobi-kenya-map]: http://goo.gl/AMspr8
[nairuby]: http://nairuby.org/
