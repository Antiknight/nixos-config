{inputs, username, config, nix-colors, ...}:
{
  home.file.".config/waybar/config.jsonc" = {
    text = ''
{
  "layer": "top", // Waybar at top layer
  "position": "top", // Waybar position (top|bottom|left|right)
  "height": 40,
  "width": 1900,
  "margin-bottom": 5,
  "spacing": 0,
  "fixed-center": true,
  "exclusive": true,
  "passthrough": false,
  "gtk-layer-shell": true,

  "modules-left": ["hyprland/workspaces"],
  "modules-right": [
    "memory",
    "cpu",
    "disk",
    "battery",
    "backlight",
    "wireplumber",
    "network",
    "tray"
  ],
  "modules-center": ["clock"],

  "hyprland/workspaces": {
    "format": "{icon}",
    "format-icons": {
        "1": "",
        "2": "󰈹",
        "3": "",
        "4": "",
        "5": "󰭻",
        "6": "󰝚",
        "7": "󱁤",
        "8": "󰇚",
        "9": "9",
        "10": "10"
    },
    "format-active": "{icon}",
    "on-click": "activate"
  },
  "hyprland/window": {
    "format": " {}",
    "separate-outputs": false,
    "max-length": 25
  },
  "tray": {
    "icon-size": 21,
    "spacing": 4,
    "show-passive-items": false,
    "max-length": 6,
    "min-length": 6,
    "ignore-list": ["network"]
  },
  "clock": {
          "format": "{:%H:%M}",
          "format-alt": "{:%A, %B %d, %Y (%R)}   ",
          "tooltip-format": "<big>{:%d %B %Y}</big>\n<tt><small>{calendar}</small></tt>",
          "on-scroll": {
                      "calendar": 1
                       }
  },
  "cpu": {
    "interval": 1,
    "format": "{icon0}{icon1}{icon2}{icon3}",
    "format-icons": ["▁", "▂", "▃", "▄", "▅", "▆", "▇", "█"],
    "max-length": 25,
    "min-length": 6
  },
  "memory": {
    "format": "  {percentage}%",
    "interval": 1,
    "max-length": 25,
    "min-length": 6
  },
  "backlight": {
    "format": "{icon}{percent}%",
    "format-icons": [" ", " ", " ", " ", " ", " ", " ", " ", " "],
    "on-scroll-up": "brightnessctl set 30+",
    "on-scroll-down": "brightnessctl set 30-",
    "max-length": 25,
    "min-length": 6
  },
  "battery": {
    "states": {
      "good": 95,
      "warning": 30,
      "critical": 20
    },
    "format": "{icon} {capacity}%",
    "format-charging": "  {capacity}%",
    "format-plugged":  "  {capacity}%",
    //"format-alt": "{time} {icon}",
    "format-icons": [
                "󰁺",
                "󰁻",
                "󰁼",
                "󰁽",
                "󰁾",
                "󰁿",
                "󰂀",
                "󰂁",
                "󰂂",
                "󰁹"
              ],
  },
  "network": {
            "interval": 1,
            "interface": "wlo1",
            "format-icons": [
              "󰤯",
              "󰤟",
              "󰤢",
              "󰤥",
              "󰤨"
            ],
            "format-wifi": " {icon}  ", // added multiple spaces to the right, was not aligning center correctly, still is not :(
            "format-disconnected": "󰤮",
            "on-click": "iwgtk",
            "tooltip": true,
            "tooltip-format": "󰢮 {ifname}\n󰩟 {ipaddr}/{cidr}\n{icon} {essid}\n󱑽 {signalStrength}% {signaldBm} dBm {frequency} MHz\n󰞒 {bandwidthDownBytes}\n󰞕 {bandwidthUpBytes}"
          },
  "disk": {
    "interval": 30,
    "format": "󰋊 {percentage_used}%",
    "path": "/",
    "tooltip": true,
    "tooltip-format": "HDD - {used} used out of {total} on {path} ({percentage_used}%)",
  },

  "wireplumber": {
    "format": "{icon} {volume}%",
    "max-volume": 100.0,
    "format-icons": ["", "", ""],
    "format-muted": "",
    "scroll-step": 1,
    "on-click": "pavucontrol",
    "max-length": 25
  }
}
'';
};
}
