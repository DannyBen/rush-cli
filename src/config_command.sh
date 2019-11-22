editor="${EDITOR:-vi}"

if [[ "${args[--edit]}" ]]; then
  "$editor" "$CONFIG_FILE"
else
  cyan "# $CONFIG_FILE"
  config_show
fi
