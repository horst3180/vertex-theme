# Define PKG_CHECK_VAR() for pkg-config < 0.28
# --------------------------------------------
m4_define_default([PKG_CHECK_VAR], [
    AC_REQUIRE([PKG_PROG_PKG_CONFIG])
    AC_ARG_VAR([$1], [value of $3 for $2, overriding pkg-config])
    AS_IF([test -z "$$1"], [$1=`$PKG_CONFIG --variable="$3" "$2"`])
    AS_IF([test -n "$$1"], [$4], [$5])
])
