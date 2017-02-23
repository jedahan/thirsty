hydrate_interval=${HYDRATE_INTERVAL:-10800} # Set time interval in seconds
hydrate_file=${HYDRATE_FILE:-$TMPDIR/.water}
hydrate_thirsty=${HYDRATE_THIRSTY:-💧}
hydrate_hydrated=${HYDRATE_HYDRATED}

check_thirst() {
  \ls $water_file(ms+$water_time) 2>/dev/null && echo $water_thirsty || echo $water_hydrated
}

hydrate() {
  touch $water_file
}

