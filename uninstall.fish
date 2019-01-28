# omf-done uninstall hook
#
# You can use this file to do custom cleanup when the package is uninstalled.
# You can use the variable $path to access the package path.

function __done_uninstall -e done_uninstall
  # Erase all __done_* functions
  functions -e __done_ended
  functions -e __done_started
  functions -e __done_get_focused_window_id
  functions -e __done_is_tmux_window_active
  functions -e __done_is_process_window_focused

  # Erase __done variables
  set -e __done_version
end
