$env.PATH = ($env.PATH | prepend [$"($env.GOPATH | path join "bin")"]) | uniq
$env.PATH = ($env.PATH | prepend [$"($env.XDG_BIN_HOME)"]) | uniq

$env.PKG_CONFIG_PATH = [
    ($env.XDG_LIB_HOME | path join "pkgconfig"),
    ($env.XDG_DATA_HOME | path join "pkgconfig"),
    ("/usr/local/lib/pkgconfig"),
    ("/usr/local/share/pkgconfig"),
    ("/usr/lib/pkgconfig"),
    ("/usr/share/pkgconfig")
]
