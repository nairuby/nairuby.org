[![Build Status](https://travis-ci.org/nairuby/nairuby.github.io.svg?branch=master)][1]

## Preamble

The **Nairobi Ruby Brigade** or **nairuby** or **nai.rb**, is a User group for
Ruby programmers based in [Nairobi, Kenya][nairobi-kenya-map]. We would like to
welcome all programmers that are interested in the Ruby language, tools,
libraries and frameworks.

We have been meeting since August 2011 for presentations, demos and discussions
applicable across various skill levels from beginner to advanced.

This repository contains the source code for our website [nairuby.org][nairuby]
and is powered by [Jekyll][jekyll], a static site generator.


## Installation & Setup

Assuming that you have Ruby installed on your machine, follow the instructions
below:

```
# Install Jekyll
gem install jekyll

# Clone the repository using git (see for git installation)
git clone git@github.com:nairuby/nairuby.github.io.git

# Change the directory to nairuby.github.io
cd nairuby.github.io

# bundle the app
bundle install

# Run a local copy of the website
jekyll serve --watch --safe --trace

# Point your web browser to localhost
http://localhost:4000
```

To run Jekyll such that you match the [GitHub Pages][github-pages] build server
(useful for debugging), run Jekyll with [Bundler][bundler]. All this does is run
Jekyll with the dependencies specified in the Gemfile.

```
bundle exec jekyll serve --watch --safe --trace
```

## Testing

The first test checks if Jekyll is able to build our site successfully by
running `jekyll build`. The second test involves running `HTML::Proofer` which
is a set of tests to validate our HTML output. These tests check if our image
references are legitimate, if they have alt tags, if our internal links are
working, and so on. It's intended to be an all-in-one checker for our output.

Running these tests has been simplified for you into one simple command, which
is:

```
bundle exec rake test
```

See `Rakefile` in the source root for details or what comprises the test. Also
note that automated tests are configured and set up to [run on Travis-CI][1].
Any push or pull request will be built.

---

For more information about Nairuby, visit [nairuby].

[bundler]: http://bundler.io/
[github-pages]: https://pages.github.com/
[ror]: http://rubyonrails.org/
[jekyll]: http://jekyllrb.com/
[nairobi-kenya-map]: http://goo.gl/AMspr8
[nairuby]: http://nairuby.org/

[1]: https://travis-ci.org/nairuby/nairuby.github.io
