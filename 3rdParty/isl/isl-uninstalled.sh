# generated by configure / remove this line to disable regeneration
prefix="/Users/mac/Desktop/PFE_Asma/tiramisu/3rdParty/isl/build"
exec_prefix="${prefix}"
bindir="${exec_prefix}/bin"
libdir="/Users/mac/Desktop/PFE_Asma/tiramisu/3rdParty/isl/.libs"
datarootdir="${prefix}/share"
datadir="${datarootdir}"
sysconfdir="${prefix}/etc"
includedir="/Users/mac/Desktop/PFE_Asma/tiramisu/3rdParty/isl/./include"
package="isl"
suffix=""

for option; do case "$option" in --list-all|--name) echo  "isl"
;; --help) pkg-config --help ; echo Buildscript Of "isl Library"
;; --modversion|--version) echo "0.19"
;; --requires) echo : ""
;; --libs) echo -L${libdir} "" "-lisl"
:
;; --cflags) echo -I${includedir} "-I./imath_wrap"
:
;; --variable=*) eval echo '$'`echo $option | sed -e 's/.*=//'`
;; --uninstalled) exit 0 
;; *) ;; esac done