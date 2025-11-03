$env.XDG_CONFIG_HOME =  ($env.HOME | path join '.config');          mkdir $env.XDG_CONFIG_HOME
$env.XDG_DATA_HOME =    ($env.HOME | path join '.local/share');     mkdir $env.XDG_DATA_HOME
$env.XDG_STATE_HOME =   ($env.HOME | path join '.local/state');     mkdir $env.XDG_STATE_HOME
$env.XDG_CACHE_HOME =   ($env.HOME | path join '.cache');           mkdir $env.XDG_CACHE_HOME
$env.XDG_BIN_HOME =     ($env.HOME | path join '.local/bin');       mkdir $env.XDG_BIN_HOME
$env.XDG_LIB_HOME =     ($env.HOME | path join '.local/lib');       mkdir $env.XDG_LIB_HOME
$env.XDG_INCLUDE_HOME = ($env.HOME | path join '.local/include');   mkdir $env.XDG_INCLUDE_HOME

$env.XDG_CONFIG_DIRS =  ['/etc/xdg']
$env.XDG_DATA_DIRS =    ['/usr/local/share', '/usr/share']

mkdir $"($env.XDG_CONFIG_HOME)/autostart"
mkdir $"($env.XDG_CONFIG_HOME)/menus/applications-merged"
mkdir $"($env.XDG_CONFIG_HOME)/systemd/user"
mkdir $"($env.XDG_CONFIG_HOME)/environment.d"
mkdir $"($env.XDG_CONFIG_HOME)/fontconfig"
$env.STARSHIP_CONFIG = ($env.XDG_CONFIG_HOME | path join 'starship/starship.toml')

mkdir $"($env.XDG_DATA_HOME)/Trash/files"
mkdir $"($env.XDG_DATA_HOME)/Trash/info"
mkdir $"($env.XDG_DATA_HOME)/applications"
mkdir $"($env.XDG_DATA_HOME)/desktop-directories"
mkdir $"($env.XDG_DATA_HOME)/fonts"
mkdir $"($env.XDG_DATA_HOME)/help"
mkdir $"($env.XDG_DATA_HOME)/icons"
mkdir $"($env.XDG_DATA_HOME)/info"
mkdir $"($env.XDG_DATA_HOME)/man"
mkdir $"($env.XDG_DATA_HOME)/mime/packages"
mkdir $"($env.XDG_DATA_HOME)/sounds/mytheme/alerts"
mkdir $"($env.XDG_DATA_HOME)/sounds/mytheme/notifications"
mkdir $"($env.XDG_DATA_HOME)/sounds/mytheme/actions"
mkdir $"($env.XDG_DATA_HOME)/sounds/mytheme/games"
mkdir $"($env.XDG_DATA_HOME)/systemd/user"
mkdir $"($env.XDG_DATA_HOME)/themes"
$env.GOPATH = ($env.XDG_DATA_HOME | path join 'go')
$env.CARGO_HOME = ($env.XDG_DATA_HOME | path join 'cargo')
$env.RUSTUP_HOME = ($env.XDG_DATA_HOME | path join 'rustup')
$env.GNUPGHOME = ($env.XDG_DATA_HOME | path join 'gnupg')
$env.PASSWORD_STORE_DIR = ($env.XDG_DATA_HOME | path join 'pass')

mkdir $"($env.XDG_CACHE_HOME)/thumbnails/normal"
mkdir $"($env.XDG_CACHE_HOME)/thumbnails/large"
mkdir $"($env.XDG_CACHE_HOME)/thumbnails/x-large"
mkdir $"($env.XDG_CACHE_HOME)/thumbnails/xx-large"
mkdir $"($env.XDG_CACHE_HOME)/thumbnails/fail"

