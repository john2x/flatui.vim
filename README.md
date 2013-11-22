FlatUI
======

A refreshing, light colorscheme compatible with terminal Vim, focusing on
greens and blues, sprinkled with oranges and reds. 

I wanted a cool, light, xterm compatible colorscheme. Instead of trying to come
up with my own colors, I decided to piggy-back on the awesome work done on
[flatuicolors.com](http://flatuicolors.com).

This is a work in progress. Constantly changing. Use a plugin manager to keep up. 

Screenshots:
------------

**Note**: All screenshots taken using terminal Vim, and using the
[vim-airline](https://github.com/bling/vim-airline) theme "luna".

### Highlight groups
![FlatUI highlight groups][highlight]

### VimL (showing comlpetion)
![FlatUI with VimL][viml]

### Python + NERDTree (showing visual selection)
![FlatUI with Python + NERDTree][python]

### HTML + CSS (showing search and incremental search highlights)
![FlatUI with HTML + CSS][htmlcss]

### Javascript (showing TODO/FIXME)
![FlatUI with Javascript][javascript]

### Clojure (showing matching parens)
![FlatUI with Clojure][clojure]

[highlight]: http://i.imgur.com/DPoIMKX.png
[viml]: http://i.imgur.com/e6BmWRS.png
[python]: http://i.imgur.com/TSAN1UU.png
[htmlcss]: http://i.imgur.com/yE6MEvB.png
[javascript]: http://i.imgur.com/OpVB12k.png
[clojure]: http://i.imgur.com/TbKhg7K.png


Known issues:
-------------

1. [Colors are too dark/light or just don't look right on GVim/Terminal vim.](https://github.com/john2x/flatui.vim/issues/2)

TODO:
----

1. Improve syntax colors (this will never be over)
2. Set "dark" version (dark could be a warmer version. i.e. using mainly
orange and red)
3. Create vim-airline theme
4. Higher contrast version (maybe)
5. Improve highlight groups of other languages (pull requests?)

License
=======

Same as Vim's. See `:help license`.
