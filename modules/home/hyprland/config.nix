{config, nix-colors, ...}:
let
  color = (import ../../variables/colors.nix);
  window_manager = (import ../../variables/window_manager.nix);
in
{
  wayland.windowManager.hyprland = {
    extraConfig = "
      $mainMod = SUPER

      monitor=,highres,auto,1

      # autostart
      exec-once = systemctl --user import-environment &
      exec-once = hash dbus-update-activation-environment 2>/dev/null &
      exec-once = dbus-update-activation-environment --systemd &
      exec-once = nm-applet &
      exec-once = wl-paste --primary --watch wl-copy --primary --clear
      exec-once = swaybg -m fill -i $(find ~/Pictures/wallpapers/ -maxdepth 1 -type f) &
      exec-once = sleep 1 && swaylock
      exec-once = waybar &
      exec-once = mako &

      
      #█▀▀ █░█ █▀█ █▀ █▀█ █▀█
      #█▄▄ █▄█ █▀▄ ▄█ █▄█ █▀▄
      
      #env = XCURSOR_THEME,Bibata-Modern-Ice
      #env = XCURSOR_SIZE,20
      
      exec = hyprctl setcursor Bibata-Modern-Ice 20
      exec = gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'
      exec = gsettings set org.gnome.desktop.interface cursor-size 20
      
      
      #█▀▀ █▀█ █▄░█ ▀█▀
      #█▀░ █▄█ █░▀█ ░█░
      
      exec = gsettings set org.gnome.desktop.interface font-name 'Cantarell 10'
      exec = gsettings set org.gnome.desktop.interface document-font-name 'Cantarell 10'
      exec = gsettings set org.gnome.desktop.interface monospace-font-name 'CaskaydiaCove Nerd Font Mono 9'
      exec = gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'
      exec = gsettings set org.gnome.desktop.interface font-hinting 'full'

      
      #█▀ █▀█ █▀▀ █▀▀ █ ▄▀█ █░░
      #▄█ █▀▀ ██▄ █▄▄ █ █▀█ █▄▄

      exec = gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-green'
      exec = gsettings set org.gnome.desktop.interface gtk-theme 'Decay-Green'
      exec = gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
      
      decoration {
          dim_special = 0.3
          blur {
              special = true
          }
      }

      
      

      input {
        kb_layout = fo
        numlock_by_default = true
        follow_mouse = 1
        sensitivity = 0
      }

      gestures {
      	workspace_swipe = true
      	workspace_swipe_fingers = 3
      }

      misc {
        disable_autoreload = true
        disable_hyprland_logo = true
        always_follow_on_dnd = true
        layers_hog_keyboard_focus = true
        animate_manual_resizes = false
        enable_swallow = true
        # swallow_regex =
        focus_on_activate = true
      }

      $c0 = rgba(${config.colorscheme.colors.base00}FF)
      $c1 = rgba(${config.colorscheme.colors.base01}FF)
      $c2 = rgba(${config.colorscheme.colors.base02}FF)
      $c3 = rgba(${config.colorscheme.colors.base03}FF)
      $c4 = rgba(${config.colorscheme.colors.base04}FF)
      $c5 = rgba(${config.colorscheme.colors.base05}FF)
      $c6 = rgba(${config.colorscheme.colors.base06}FF)
      $c7 = rgba(${config.colorscheme.colors.base07}FF)
      $c8 = rgba(${config.colorscheme.colors.base08}FF)
      $c9 = rgba(${config.colorscheme.colors.base09}FF)
      $ca = rgba(${config.colorscheme.colors.base0A}FF)
      $cb = rgba(${config.colorscheme.colors.base0B}FF)
      $cc = rgba(${config.colorscheme.colors.base0C}FF)
      $cd = rgba(${config.colorscheme.colors.base0D}FF)
      $ce = rgba(${config.colorscheme.colors.base0E}FF)
      $cf = rgba(${config.colorscheme.colors.base0F}FF)

      general {
          gaps_in = 3
          gaps_out = 8
          border_size = 2
          col.active_border = rgba(90ceaaff) rgba(ecd3a0ff) 45deg
          col.inactive_border = rgba(86aaeccc) rgba(93cee9cc) 45deg
          layout = dwindle
          resize_on_border = true
      }

      group {
          col.border_active = rgba(90ceaaff) rgba(ecd3a0ff) 45deg
          col.border_inactive = rgba(86aaeccc) rgba(93cee9cc) 45deg
          col.border_locked_active = rgba(90ceaaff) rgba(ecd3a0ff) 45deg
          col.border_locked_inactive = rgba(86aaeccc) rgba(93cee9cc) 45deg
      }

      xwayland {
        force_zero_scaling = true
      }

      dwindle {
        no_gaps_when_only = false
        force_split = 2
        special_scale_factor = 1.0
        split_width_multiplier = 1.0
        use_active_for_splits = true
        pseudotile = yes
        preserve_split = yes
        smart_resizing = true
      }

      master {
        new_is_master = true
        special_scale_factor = 1
        no_gaps_when_only = false
      }

      decoration {
          rounding = 10
          drop_shadow = false
      
          blur {
              enabled = yes
              size = 5
              passes = 4
              new_optimizations = on
              ignore_opacity = on
              xray = true
          }
      }


      animations {
        enabled = yes
        bezier = wind, 0.05, 0.9, 0.1, 1.05
        bezier = winIn, 0.1, 1.1, 0.1, 1.1
        bezier = winOut, 0.3, -0.3, 0, 1
        bezier = liner, 1, 1, 1, 1
        animation = windows, 1, 6, wind, slide
        animation = windowsIn, 1, 6, winIn, slide
        animation = windowsOut, 1, 5, winOut, slide
        animation = windowsMove, 1, 5, wind, slide
        animation = border, 1, 1, liner
        animation = borderangle, 1, 30, liner, loop
        animation = fade, 1, 10, default
        animation = workspaces, 1, 5, wind
      }


      # ----------------------------------------------------------------
      
      # show keybinds list
      bind = $mainMod, F1, exec, show-keybinds

      # keybindings
      bind = $mainMod, Return, exec, kitty
      bind = ALT, Return, exec, kitty --title float_kitty
      bind = $mainMod SHIFT, Return, exec, kitty --start-as=fullscreen -o 'font_size=16'
      bind = $mainMod, W, exec, firefox
      bind = $mainMod, Q, killactive,
      bind = $mainMod, F, fullscreen, 0
      bind = $mainMod SHIFT, F, fullscreen, 1
      bind = $mainMod, Space, togglefloating,
      bind = $mainMod, D, exec, pkill wofi || wofi --show drun
      bind = $mainMod, Escape, exec, swaylock
      bind = $mainMod SHIFT, Escape, exec, shutdown-script
      bind = $mainMod, P, pseudo,
      bind = $mainMod, J, togglesplit,
      bind = $mainMod, E, exec, nemo
      bind = $mainMod SHIFT, B, exec, pkill -SIGUSR1 .waybar-wrapped
      bind = $mainMod, C ,exec, hyprpicker -a
      bind = $mainMod, G,exec, $HOME/.local/bin/toggle_layout
      bind = $mainMod, B,exec, pkill wofi || wallpaper-picker
      
      # screenshot
      bind = $mainMod, Print, exec, grimblast --notify --cursor save area ~/Pictures/$(date +'%Y-%m-%d-At-%Ih%Mm%Ss').png
      bind = ,Print, exec, grimblast --notify --cursor  copy area
      
      # switch focus
      bind = $mainMod, left, movefocus, l
      bind = $mainMod, right, movefocus, r
      bind = $mainMod, up, movefocus, u
      bind = $mainMod, down, movefocus, d
      
      # switch workspace
      bind = $mainMod, 1, workspace, 1
      bind = $mainMod, 2, workspace, 2
      bind = $mainMod, 3, workspace, 3
      bind = $mainMod, 4, workspace, 4
      bind = $mainMod, 5, workspace, 5
      bind = $mainMod, 6, workspace, 6
      bind = $mainMod, 7, workspace, 7
      bind = $mainMod, 8, workspace, 8
      bind = $mainMod, 9, workspace, 9
      bind = $mainMod, 0, workspace, 10
      
      # same as above, but switch to the workspace
      bind = $mainMod SHIFT, 1, movetoworkspace, 1     # movetoworkspacesilent
      bind = $mainMod SHIFT, 2, movetoworkspace, 2
      bind = $mainMod SHIFT, 3, movetoworkspace, 3
      bind = $mainMod SHIFT, 4, movetoworkspace, 4
      bind = $mainMod SHIFT, 5, movetoworkspace, 5
      bind = $mainMod SHIFT, 6, movetoworkspace, 6
      bind = $mainMod SHIFT, 7, movetoworkspace, 7
      bind = $mainMod SHIFT, 8, movetoworkspace, 8
      bind = $mainMod SHIFT, 9, movetoworkspace, 9
      bind = $mainMod SHIFT, 0, movetoworkspace, 10
      bind = $mainMod CTRL, c, movetoworkspace, empty
      
      # window control
      bind = $mainMod SHIFT, left, movewindow, l
      bind = $mainMod SHIFT, right, movewindow, r
      bind = $mainMod SHIFT, up, movewindow, u
      bind = $mainMod SHIFT, down, movewindow, d
      bind = $mainMod CTRL, left, resizeactive, -80 0
      bind = $mainMod CTRL, right, resizeactive, 80 0
      bind = $mainMod CTRL, up, resizeactive, 0 -80
      bind = $mainMod CTRL, down, resizeactive, 0 80
      bind = $mainMod ALT, left, moveactive,  -80 0
      bind = $mainMod ALT, right, moveactive, 80 0
      bind = $mainMod ALT, up, moveactive, 0 -80
      bind = $mainMod ALT, down, moveactive, 0 80
      
      # media and volume controls
      bind = ,XF86AudioRaiseVolume,exec, pamixer -i 2
      bind = ,XF86AudioLowerVolume,exec, pamixer -d 2
      bind = ,XF86AudioMute,exec, pamixer -t
      bind = ,XF86AudioPlay,exec, playerctl play-pause
      bind = ,XF86AudioNext,exec, playerctl next
      bind = ,XF86AudioPrev,exec, playerctl previous
      bind = , XF86AudioStop, exec, playerctl stop
      bind = $mainMod, mouse_down, workspace, e-1
      bind = $mainMod, mouse_up, workspace, e+1
      
      # mouse binding
      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod, mouse:273, resizewindow
      
      # windowrule
      windowrule = float,audacious
      windowrule = workspace 8 silent, audacious
      windowrule = pin,wofi
      windowrule = float,wofi
      windowrule = noborder,wofi
      windowrule = tile, neovide
      windowrule = idleinhibit focus,mpv
      windowrule = float,udiskie
      windowrule = float,title:^(Transmission)$
      windowrule = float,title:^(Volume Control)$
      windowrule = float,title:^(Firefox — Sharing Indicator)$
      windowrule = move 0 0,title:^(Firefox — Sharing Indicator)$
      windowrule = size 700 450,title:^(Volume Control)$
      windowrule = move 40 55%,title:^(Volume Control)$
      windowrulev2 = float, title:^(Picture-in-Picture)$
      windowrulev2 = opacity 1.0 override 1.0 override, title:^(Picture-in-Picture)$
      # windowrulev2 = opacity 1.0 override 1.0 override, title:^(.*YouTube.*)$
      windowrulev2 = pin, title:^(Picture-in-Picture)$
      windowrule = float,imv
      windowrule = center,imv
      windowrule = size 1080 725,imv
      windowrulev2 = opacity 1.0 override 1.0 override, title:^(.*imv.*)$
      windowrule = float,mpv
      windowrule = center,mpv
      windowrulev2 = opacity 1.0 override 1.0 override, title:^(.*mpv.*)$
      windowrule = tile,Aseprite
      windowrulev2 = opacity 1.0 override 1.0 override, class:(Aseprite)
      windowrulev2 = opacity 1.0 override 1.0 override, class:(Unity)
      windowrule = size 1080 725,mpv
      windowrulev2 = idleinhibit focus, class:^(mpv)$
      windowrulev2 = idleinhibit fullscreen, class:^(firefox)$
    
      windowrule = float,title:^(float_kitty)$
      windowrule = center,title:^(float_kitty)$
      windowrule = size 950 600,title:^(float_kitty)$

      windowrulev2 = float,class:^(pavucontrol)$
      windowrulev2 = float,class:^(SoundWireServer)$
      windowrulev2 = float,class:^(file_progress)$
      windowrulev2 = float,class:^(confirm)$
      windowrulev2 = float,class:^(dialog)$
      windowrulev2 = float,class:^(download)$
      windowrulev2 = float,class:^(notification)$
      windowrulev2 = float,class:^(error)$
      windowrulev2 = float,class:^(confirmreset)$
      windowrulev2 = float,title:^(Open File)$
      windowrulev2 = float,title:^(branchdialog)$
      windowrulev2 = float,title:^(Confirm to replace files)$
      windowrulev2 = float,title:^(File Operation Progress)$
    ";
  };
}
