AC_INIT(
    [vertex-theme],
    [20150325],
    [https://github.com/horst3180/Vertex-theme/issues],
    [vertex-theme],
    [https://github.com/horst3180/Vertex-theme],
    []
)

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIRS([m4])
AM_INIT_AUTOMAKE()
AC_PROG_MKDIR_P

VERTEX_ENABLE([CINNAMON],    [cinnamon],    [Cinnamon],     [disable])
VERTEX_ENABLE([DARK],        [dark],        [Vertex Dark],  [disable])
VERTEX_ENABLE([GNOME_SHELL], [gnome-shell], [GNOME Shell],  [disable])
VERTEX_ENABLE([GTK2],        [gtk2],        [GTK2],         [disable])
VERTEX_ENABLE([GTK3],        [gtk3],        [GTK3],         [disable])
VERTEX_ENABLE([LIGHT],       [light],       [Vertex Light], [disable])
VERTEX_ENABLE([METACITY],    [metacity],    [Metacity],     [disable])
VERTEX_ENABLE([UNITY],       [unity],       [Unity],        [disable])
VERTEX_ENABLE([XFWM],        [xfwm],        [XFWM],         [disable])

PKG_CHECK_VAR(
    [GNOME_VERSION],
    [version],
    [gnome-desktop-3.0],
    [GNOME_VERSION=`echo $GNOME_VERSION | cut -d. -f-2`],
    [GNOME_VERSION="3.16"]
)
AC_ARG_WITH(
    [gnome],
    [AS_HELP_STRING(
        [--with-gnome],
        [GNOME minor version]
    )],
    [GNOME_VERSION="$withval"],
    [GNOME_VERSION="$GNOME_VERSION"]
)
AC_SUBST([GNOME_VERSION])

AC_CONFIG_FILES([
    common/Makefile
    extra/Makefile
    Makefile
])

AC_OUTPUT
