window (new|open): app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
focus <user.running_applications>: user.switcher_focus(running_applications)
focus console: user.switcher_focus("terminal")
# following only works on windows. Can't figure out how to make it work for mac. No idea what the equivalent for linux would be.
#focus$: user.switcher_menu()
running list: user.switcher_toggle_running()
running close: user.switcher_hide_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

#snap left:
#    key(super-left)
#snap right:
#    key(super-right)
#snap bottom:
#    key(super-down)
#snap top:
#    key(super-up)
#snap top left:
#    key(super-shift-left)
#snap top right:
#    key(super-shift-right)
#snap bottom left:
#    key(super-ctrl-left)
#snap bottom right:
#    key(super-ctrl-right)
#snap full [screen]:
#    key(super-pgup)
snap <user.window_snap_position>: user.snap_window(window_snap_position)
snap next [screen]: user.move_window_next_screen()
snap last [screen]: user.move_window_previous_screen()
snap screen <number>: user.move_window_to_screen(number)
snap <user.running_applications> <user.window_snap_position>:
    user.snap_app(running_applications, window_snap_position)
snap <user.running_applications> [screen] <number>:
    user.move_app_to_screen(running_applications, number)
