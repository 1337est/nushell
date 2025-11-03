$env.MY_DCDD_DIR = ($env.HOME | path join 'dcdd'); mkdir $env.MY_DCDD_DIR
$env.MY_FOG_DIR = ($env.HOME | path join 'fog'); mkdir $env.MY_FOG_DIR
$env.MY_LEARN_DIR = ($env.HOME | path join 'learn'); mkdir $env.MY_LEARN_DIR
$env.MY_MM_DIR = ($env.HOME | path join 'mm'); mkdir $env.MY_MM_DIR
$env.MY_PJ_DIR = ($env.HOME | path join 'pj'); mkdir $env.MY_PJ_DIR
$env.MY_SCRIB_DIR = ($env.HOME | path join 'scrib'); mkdir $env.MY_SCRIB_DIR
$env.MY_TMP_DIR = ($env.HOME | path join 'tmp'); mkdir $env.MY_TMP_DIR

mkdir $"($env.MY_DCDD_DIR)/github.com"
mkdir $"($env.MY_DCDD_DIR)/sqlite"

mkdir $"($env.MY_LEARN_DIR)/api"
mkdir $"($env.MY_LEARN_DIR)/lang"
mkdir $"($env.MY_LEARN_DIR)/school"

mkdir $"($env.MY_MM_DIR)/audio"
mkdir $"($env.MY_MM_DIR)/audio/rec"
mkdir $"($env.MY_MM_DIR)/audio/book/f"
mkdir $"($env.MY_MM_DIR)/audio/book/nf"
mkdir $"($env.MY_MM_DIR)/audio/music"
mkdir $"($env.MY_MM_DIR)/doc"
mkdir $"($env.MY_MM_DIR)/doc/book/f"
mkdir $"($env.MY_MM_DIR)/doc/book/g/comic"
mkdir $"($env.MY_MM_DIR)/doc/book/g/manga"
mkdir $"($env.MY_MM_DIR)/doc/book/nf"
mkdir $"($env.MY_MM_DIR)/doc/life"
mkdir $"($env.MY_MM_DIR)/doc/paper"
mkdir $"($env.MY_MM_DIR)/doc/quote"
mkdir $"($env.MY_MM_DIR)/photo"
mkdir $"($env.MY_MM_DIR)/photo/camera/rec"
mkdir $"($env.MY_MM_DIR)/photo/screen/rec"
$env.GRIM_DEFAULT_DIR = ($env.MY_MM_DIR | path join 'photo/screen/rec')
$env.HYPRSHOT_DIR = ($env.MY_MM_DIR | path join 'photo/screen/rec')
mkdir $"($env.MY_MM_DIR)/photo/banner"
mkdir $"($env.MY_MM_DIR)/photo/icons"
mkdir $"($env.MY_MM_DIR)/photo/phone"
mkdir $"($env.MY_MM_DIR)/photo/profile"
mkdir $"($env.MY_MM_DIR)/photo/wallpaper"
mkdir $"($env.MY_MM_DIR)/video"
mkdir $"($env.MY_MM_DIR)/video/camera/rec"
mkdir $"($env.MY_MM_DIR)/video/screen/rec"

mkdir $"($env.MY_PJ_DIR)/archive"
mkdir $"($env.MY_PJ_DIR)/game"
mkdir $"($env.MY_PJ_DIR)/link/dotcache"
mkdir $"($env.MY_PJ_DIR)/link/dotconfig"
mkdir $"($env.MY_PJ_DIR)/link/dotdata"
mkdir $"($env.MY_PJ_DIR)/link/etc"
mkdir $"($env.MY_PJ_DIR)/link/home"
mkdir $"($env.MY_PJ_DIR)/mkit/"
mkdir $"($env.MY_PJ_DIR)/script/bash"
mkdir $"($env.MY_PJ_DIR)/script/nu"

mkdir $"($env.MY_SCRIB_DIR)/click"
mkdir $"($env.MY_SCRIB_DIR)/doodle/rec"
mkdir $"($env.MY_SCRIB_DIR)/helpme/mypc"
mkdir $"($env.MY_SCRIB_DIR)/idea/rec"
mkdir $"($env.MY_SCRIB_DIR)/idea/game"
mkdir $"($env.MY_SCRIB_DIR)/jnull/rec"
mkdir $"($env.MY_SCRIB_DIR)/template"
mkdir $"($env.MY_SCRIB_DIR)/todo"
mkdir $"($env.MY_SCRIB_DIR)/write/rec"
