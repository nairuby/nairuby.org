---
title: Members
layout: default
sitemap: false
permalink: /about/members/
---

### Who Is A Member?

Anyone who is part of the [Nairuby Organisation on GitHub][1] or has subscribed
to the [Nairuby Mailing List][2]. The former is mainly for those who are
collaborating code while the latter is the primary communication channel. Each,
as you can see, serves a different purpose and so _we recommend that you **join
both**._


#### GitHub Organisation Members

These are the members who have joined the [Nairuby organisation on GitHub][1].
At the moment we should be about 19 in total but only members who've set their
profile association with Nairuby to public will be listed below. Also note that
this list is automatically generated from GitHub.

<div class="members-thumbs">
  <ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">

    {% for member in site.github.organization_members %}
    <li>
      <a target="_blank" class="th radius" href="{{ member.html_url }}">
        <img src="{{ member.avatar_url }}">
      </a>
      <p>
        <i class="fa fa-github"></i>
        <a target="_blank" href="{{ member.html_url }}">{{ member.login }}</a>
      </p>
    </li>
    {% endfor %}
  </ul>
</div>


#### Mailing List Members

[Subscribe to our online mailing list "nairuby"][2] to receive meeting
announcements and notes, get suggestions of interesting events, and participate
in technical discussions. You may post information about Ruby related jobs and
gigs near Nairobi if you follow the job posting guidelines.

Our mailing list is public ... a list of the current subscribers can [be found on the mailing list about page][3].

[1]: {{site.nairuby.github_url}}
[2]: https://groups.google.com/forum/#!forum/nairuby
[3]: https://groups.google.com/forum/#!aboutgroup/nairuby
