# yazi terminal file explorer
def --env y [...args] {
    let tmp = (mktemp -t "yazi-cwd.XXXXXX")
    yazi ...$args --cwd-file $tmp
    let cwd = (open $tmp)
    if $cwd != "" and $cwd != $env.PWD {
        cd $cwd
    }
    rm -fp $tmp
}

# SSH Agent/key management via keychain utility
keychain --eval --quiet id_ed25519
    | lines
    | where not ($it | is-empty)
    | parse "{k}={v}; export {k2};"
    | select k v
    | transpose --header-row
    | into record
    | load-env
keychain --eval --quiet FE1B05C31D8BACACDC77545B5596860E4313A9F5
    | lines
    | where not ($it | is-empty)
    | parse "{k}={v}; export {k2};"
    | select k v
    | transpose --header-row
    | into record
    | load-env
keychain --eval --quiet 8B75E4F45D7EAAA5E1AF400CF1ABF8C6D0B8B027
    | lines
    | where not ($it | is-empty)
    | parse "{k}={v}; export {k2};"
    | select k v
    | transpose --header-row
    | into record
    | load-env

# Autoload App Integration -----------------------------------------------------

# Check the output of $nu.data-dir in terminal to see where this will be located
let autoload_dir = ($nu.data-dir | path join "vendor/autoload")
mkdir $autoload_dir

# List of initialization data for apps
let apps = [
    {
        name: "starship",
        file: "starship.nu",
        command: (starship init nu),
        description: "A minimal, blazingly-fast, and infinitely customizable prompt for any shell."
    },
    {
        name: "atuin",
        file: "atuin.nu",
        command: (atuin init nu --disable-up-arrow)
        description: "atuin replaces your existing shell history with a SQLite database, and records additional context for your commands. Additionally, it provides optional and fully encrypted synchronisation of your history between machines, via an Atuin server."
    },
    {
        name: "carapace",
        file: "carapace.nu",
        command: (carapace _carapace nushell)
        description: "carapace provides argument completion for multiple CLI commands, and works across multiple POSIX and non-POSIX shells (to include nushell)."
    },
]

# Iterate over list of apps and generate the file
for app in $apps {
    let file_path = ($autoload_dir | path join $app.file)
    $app.command | save -f $file_path
}
# WARN: There is a separate invocation of the above `$app.command | save -f $file_path` located in
# the `$nu.user-autoload-dirs` directory. This is to override any setting you may want to change.
# However, any `.nu` files in `$nu.user-autoload-dirs` will be automatically sourced during
# startup. This occurs after any vendor files have been processed, allowing user override of vendor
# settings if needed. However, since the files in $nu.vendor-autoload-dirs are created every shell
# instance to keep updated, this means changes made to the `$nu.user-autoload-dirs` files
# are not necessarily up to date with the latest changes. Ensure no conflicting changes in
# the `$nu.vendor-autoload-dirs` files if something breaks.

