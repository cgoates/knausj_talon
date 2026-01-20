app: paraview
-


pipeline blocks:
    matches = user.mouse_helper_find_template_relative("2023-02-20_10.33.12.599097.png")
    user.marker_ui_show(matches)

time navigation:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("-1796 -1647 -1510 -1606", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)

press play:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2023-02-20_10.38.04.589380.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

time step next:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2023-02-20_11.46.30.445027.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

time step previous:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2023-02-20_11.47.24.754452.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

time step last:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2023-02-20_11.48.12.099371.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

time step first:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2023-02-20_11.48.45.581939.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

reload python:
    key(cmd-r)
    mouse_move(1085.94921875, 567.3359375)
    sleep(0.45)
    mouse_click(0)
    sleep(3)
    user.menu_select('File|Recent Files|/Users/caleb/sweeps/IETC.py')