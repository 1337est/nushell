$env.config.keybindings ++= [
    # vim keybinds to cycle through completion menu
    {
        name: completion_menu
        modifier: control
        keycode: char_n
        mode: [emacs vi_normal vi_insert]
        event: {
            until: [
                { send: menu name: completion_menu }
                { send: menunext }
            ]
        }
    },
    {
        name: completion_menu
        modifier: control
        keycode: char_p
        mode: [emacs vi_normal vi_insert]
        event: {
            until: [
                { send: menu name: completion_menu }
                { send: menuprevious }
            ]
        }
    },
    # vim keybindings to accept selection
    # TODO: remove Enter select (currently not working)
    {
        name: completion_menu
        modifier: none
        keycode: enter
        mode: [emacs vi_normal vi_insert]
        event: null
    },
    {
        name: completion_menu
        modifier: control
        keycode: char_y
        mode: [emacs vi_normal vi_insert]
        event: { send: Enter }
    },
]
