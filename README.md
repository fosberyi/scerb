Scerb
=======

[![Circle CI](https://circleci.com/gh/fosberyi/scerb/tree/master.svg?style=svg)](https://circleci.com/gh/fosberyi/scerb/tree/master)

This gem (plugin, whatever you wanna call it...) is for handling templates 
of the `.css.scerb` variety in your Rails application. Which is basically a
`.css.scss.erb` - compiling thusly: `erb` -> `scss` -> `css`. Yeah, that was
just so I could use the word "thusly".

The ideas behind the gem come from Jos&eacute; Valim's 
*[Crafting Rails 4 Applications](https://pragprog.com/book/jvrails2/crafting-rails-4-applications)*
in which he creates a template handler for Markdown to HTML. Same idea here, basically.

### Syntax Highlighting

So obviously there's not much support for `.scerb` files. If you'd like to get some syntax
highlighting for this file type here's a few ways, depending on your editor:

#### Vim

Add the following line to your `.vimrc` somewhere (it can be in a support config file or 
something like that - as long as it gets loaded into your `.vimrc` eventually):

```
autocmd BufNewFile,BufRead *.scerb set filetype=scss.erb
```

### FAQ

**What do I need this for?**

Well, in my case, I needed to serve specific CSS overrides in a multi-tenant user application.
Originally we were just using `.css.erb` files, but we couldn't do things like take a user's
selected font color and darken/lighten it for the hover state. So this allows you to persist a 
user's or theme's settings and serve customized CSS files while using `erb` tags in a `.scss`
file.

**Why is called "Scerb"?**

`.scss` + `.erb` = `.scerb`.

**How do you pronounce it?**

"sk&#601;rb" - with a hard 'c'

**That's stupid, you should have spelt it with a 'k' then. Don't you know about english grammar?**

Ok...[https://www.youtube.com/watch?v=pWdd6_ZxX8c](https://www.youtube.com/watch?v=pWdd6_ZxX8c)

Also, I didn't want the name of the gem to sound like a mildly racist term
for an certain nationality of Eastern European.

Wanna argue about how to pronounce GIF now?

### LICENSE

MIT
