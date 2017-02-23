GEOMETRY_INTERVAL_HYDRATE=${GEOMETRY_INTERVAL_HYDRATE:-30} # minutes
GEOMETRY_SYMBOL_HYDRATE=${GEOMETRY_SYMBOL_HYDRATE:-💧}

geometry_prompt_hydrate_setup() {
  test -f $TMPDIR/water || touch $TMPDIR/water
}

geometry_prompt_hydrate_check() {
  test -f $TMPDIR/water(mm+$GEOMETRY_INTERVAL_HYDRATE)
}

geometry_prompt_hydrate_render() {
  echo $GEOMETRY_SYMBOL_HYDRATE
}

hydrate() {
  touch $TMPDIR/water
}

geometry_plugin_register hydrate
