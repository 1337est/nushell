# To learn more about a particular setting, run any of these terminal commands:
# config nu --doc # for output into the terminal
# config nu --doc | nu-highlight | less -R # for viewing in the terminal
# config nu --doc out> ~/path/to/file # for saving the output to a file

# Various Config Options -------------------------------------------------------

source ~/.config/nushell/src/config/history.nu
source ~/.config/nushell/src/config/misc.nu
source ~/.config/nushell/src/config/editmode.nu
source ~/.config/nushell/src/config/completions.nu
source ~/.config/nushell/src/config/keybindings.nu
source ~/.config/nushell/src/config/menus.nu
source ~/.config/nushell/src/config/termint.nu
source ~/.config/nushell/src/config/errdisplay.nu
source ~/.config/nushell/src/config/tabledisplay.nu
source ~/.config/nushell/src/config/datetime.nu
source ~/.config/nushell/src/config/filesize.nu
source ~/.config/nushell/src/config/outdisplay.nu
source ~/.config/nushell/src/config/alias.nu

# Environment Variables --------------------------------------------------------

source ~/.config/nushell/src/env/programs.nu
source ~/.config/nushell/src/env/xdg.nu
source ~/.config/nushell/src/env/mydirs.nu
source ~/.config/nushell/src/env/prompt.nu
source ~/.config/nushell/src/env/path.nu

# App Integration --------------------------------------------------------------

source ~/.config/nushell/src/apps.nu
