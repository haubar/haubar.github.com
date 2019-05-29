---
date: 2019-04-15T23:00:07-05:00
---

{{% hero caption="Photo by [Sam Whited](https://www.flickr.com/photos/samwhited/9089062389/lightbox)"
         height="60vh"
         bgcolor="#000"
         img="https://live.staticflickr.com/7312/9089062389_70a9b2ad87_k_d.jpg" %}}
## The Hero Shortcode

This theme lets you customize the layout with short codes.
This shortcode is called `hero`.
It can include a caption, height, background color and cover image.
If you were doing this on your own site, you'd probably want to compress the
image with `mozjpeg` and maybe scale it down a bit.
{{% /hero %}}

## Flex

You can use the `flex` shortcode to put a few elements side by side.
Here it is being used with a mix of HTML and markdown to display contact
details.

You can also see examples of the `phone`, `email` and `muc` shortcodes in this
section.

{{% flex %}}

<form name="contact" method="POST">
  <p class="hidden"><label>Don’t fill this out if you're human: <input name="honeypot"/></label></p>
  <label for="contactname">Your Name:</label>
  <input type="text" name="name" id="contactname" placeholder="Rubens Barrichello"/>
  <label for="contactemail" >Your Email:</label>
  <input type="email" name="email" id="contactemail" placeholder="rubens@example.net"/>
  <label for="contactmessage">Message:</label>
  <textarea name="message" id="contactmessage"></textarea>
  <button type="submit" class="primary">Send</button>
</form>

<dl>
<dt>Phone</dt>
<dd>{{% phone %}}</dd>
<dt>Email</dt>
<dd>{{% email %}}</dd>
<dt>Chat room</dt>
<dd>{{% muc %}}</dd>
<dt>Location</dt>
<dt>
<iframe frameborder="0"
				scrolling="no"
				marginheight="0"
				marginwidth="0"
				title="Map with location"
				style="height: 350px; width: 100%; border: 1px solid var(--color-dark-bg)"
				src="https://www.openstreetmap.org/export/embed.html?bbox=-83.5679340362549%2C34.56177824932235%2C-83.516263961792%2C34.65883977236554&amp;layer=mapnik"></iframe>
<br/>
<a style="font-size: small" href="https://www.openstreetmap.org/#map=14/34.6103/-83.5421&amp;layers=N">View Larger Map</a>
</dt>
</dl>

{{% /flex %}}

{{% hero caption="Photo by [Sam Whited](https://www.flickr.com/photos/samwhited/6908566008/lightbox)"
         height="60vh"
         bgcolor="#000"
         img="https://live.staticflickr.com/7097/6908566008_12432b7c7a_k_d.jpg" %}}
## Blog

The theme includes a blog! By default the blog is in the `post` section to
support the Hugo example theme (and lots of other blog themes that use
`post`).
However, since this theme doesn't show the blog on the home page, I like to
rename the section to `blog` by including this in `config.toml`:

```toml
[permalinks]

post = "/blog/:year-:month-:day-:slug/"
```

  And then changing the `url` parameter in the frontmatter for
  `content/post/_index.md`:

```toml
+++
title       = "Blog"
description = "A nice description of our blog."
url         = "/blog"
+++
```

  <a class="button primary center" href="/blog">Example Blog</a>
{{% /hero %}}


## About

This theme is called "Co-op" because it was originally made for [Corner
Garage](https://cornergarage.coop), a cooperative DIY auto garage in Austin, TX.
You can use it too!

If you click the "about" link in the header, you'll see that some nice `:target`
styles are applied to this sections heading.
The color of this chrome (and the color of links and buttons with the `.primary`
class) is set by the CSS variable `--color-accent`.
It is overridden in the example site by overriding the `css.html` partial and
loading a stylesheet that sets the variable on the `:root` element.
You can customize lots of things this way! See the readme for details.

<a class="button" href="https://git.sr.ht/~samwhited/co-op/blob/master/README.md">README.md</a>
