# My custom version of dwm

The patches that have been applied are roughly the ones in dotfiles/patches.  But things required some customizations and fixing to make them all work together so they weren't just blindly applied.  There is an actual config.h here with my settings too which is probably better to look than at the default one.  Roughly this version does:

* adds deck, columns, gapless grid layouts
* pointer is always warped when focus is changed with keyboard
* the mark patch is added
* pertag to save layouts per tag
* urgency hint borders and tag colors
* shouldn't crash with older Xft
* adds urgency color for status if status starts with '[URG]' (which is not displayed)
* adds systray
* adds tagshift
* quits on SIGTERM
* adds movestack to move windows within the stack
* adds scratchpad terminal'
* focus on _NET_ACTIVE_WINDOW
* show active monitor with the status bar
* adds the autostart.sh script to start other things on startup (I'm not entirely happy with this, might rework how this is done)
* adds actualfullscreen patch

dotfiles has some of the other configuration for some of the other related things.
