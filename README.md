Arch Linux dotfiles
===================

##### Cursor themes

* $HOME/.icons/default/index.theme
* /usr/share/icons/default/index.theme

`ln -s /usr/share/icons/Oxygen_White/cursors ~/.icons/default/cursors`

##### Fix GVim borders (.gtkrc-2.0)

* Tomorrow: #fafafa
* Tomorrow Night: #1d1f21

##### Debian color scheme (.i3/config)
    colors {
        separator  #222222
        background #222222
        statusline #666666
        active_workspace   #333333 #333333 #888888
        urgent_workspace   #eb709b #eb709b #ffffff
        focused_workspace  #d70a53 #d70a53 #ffffff
        inactive_workspace #333333 #333333 #888888
    }

    # Debian colors
    client.urgent           #eb709b #eb709b #ffffff #eb709b
    client.focused          #d70a53 #d70a53 #ffffff #8c0333
    client.unfocused        #333333 #333333 #888888 #333333
    client.focused_inactive #333333 #333333 #888888 #333333

    # Dmenu colors: -nb '#222222' -nf '#888888' -sb '#d70a53' -sf '#ffffff'

##### Archlinux color scheme (.i3/config)

    colors {
        separator  #222222
        background #222222
        statusline #dddddd
        active_workspace   #333333 #333333 #ffffff
        urgent_workspace   #2f343a #900000 #ffffff
        focused_workspace  #0088CC #0088CC #ffffff
        inactive_workspace #333333 #333333 #888888
    }

    # Archlinux colors
    client.urgent           #2f343a #900000 #ffffff #900000
    client.focused          #0088CC #0088CC #ffffff #dddddd
    client.unfocused        #333333 #333333 #888888 #292d2e
    client.focused_inactive #333333 #333333 #888888 #292d2e

    # Dmenu colors: -nb '#222222' -nf '#888888' -sb '#0088CC' -sf '#ffffff'

##### Archlinux light color scheme (.i3/config)

    colors {
        separator  #222222
        background #222222
        statusline #dddddd
        active_workspace   #333333 #333333 #ffffff
        urgent_workspace   #2f343a #900000 #ffffff
        focused_workspace  #33aadd #33aadd #ffffff
        inactive_workspace #333333 #333333 #888888
    }

    # Archlinux light colors
    client.urgent           #2f343a #900000 #ffffff #900000
    client.focused          #33aadd #33aadd #ffffff #dddddd
    client.unfocused        #333333 #333333 #888888 #292d2e
    client.focused_inactive #333333 #333333 #888888 #292d2e

    # Dmenu colors: -nb '#222222' -nf '#888888' -sb '#33aadd' -sf '#ffffff'

