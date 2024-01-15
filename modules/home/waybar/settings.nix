{ 
    custom ? {
        font = "JetBrainsMono Nerd Font";
        fontsize = "12";
        primary_accent = "cba6f7";
        secondary_accent = "89b4fa";
        tertiary_accent = "f5f5f5";
        background = "11111B";
        opacity = ".85";
        cursor = "Numix-Cursor";
    },
    ... 
}:
{
  programs.waybar.settings.mainBar = {
    position= "top";
    layer= "top";
    # height= 15;
    margin-top= 0;
    margin-bottom= 0;
    margin-left= 0;
    margin-right= 0;
    modules-left= [
        "custom/launcher" 
        "cpu" 
        "memory" 
        "custom/playerctl#play"
        "tray" 
    ];
    modules-center= [
        "hyprland/workspaces"
    ];
    modules-right= [
        "backlight"
        "pulseaudio"
        "battery"
        "clock" 
        "custom/power"
    ];
    clock= {
        format = "{: %I:%M %p   %d/%m/%Y}";
        tooltip= "true";
        tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt= " {:%d/%m}";
    };
    "wlr/workspaces"= {
        active-only= false;
        all-outputs= false;
        disable-scroll= false;
        on-scroll-up= "hyprctl dispatch workspace e-1";
        on-scroll-down= "hyprctl dispatch workspace e+1";
        format = "{name}";
        on-click= "activate";
        format-icons= {
            urgent= "";
            active= "";
            default = "";
            sort-by-number= true;
        };
    };
    "custom/playerctl#backward"= {
        format= "󰙣 "; 
        on-click= "playerctl previous";
        on-scroll-up = "playerctl volume .05+";
        on-scroll-down = "playerctl volume .05-";
    };
    "custom/playerctl#play"= {
        format= "{icon}";
        return-type= "json";
        exec= "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
        on-click= "playerctl play-pause";
        on-scroll-up = "playerctl volume .05+";
        on-scroll-down = "playerctl volume .05-";
        format-icons= {
            Playing = "<span>󰏥 </span>";
            Paused = "<span> </span>";
            Stopped = "<span> </span>";
        };
    };
    "custom/playerctl#foward"= {
        format= "󰙡 ";
        on-click= "playerctl next";
        on-scroll-up = "playerctl volume .05+";
        on-scroll-down = "playerctl volume .05-";
    };
    memory= {
        format= "󰟜 {}%";
        format-alt= "󰟜 {used} GiB"; # 
        interval= 30;
        max-length= 10;
    };
    cpu= {
        format= "  {usage}%";
        format-alt= "  {avg_frequency} GHz";
        interval= 15;
        max-length= 10;
    };
    disk = {
        # path = "/";
        format = "󰋊 {percentage_used}%";
        interval= 60;
    };
    network = {
        format-wifi = "  {signalStrength}%";
        format-ethernet = "󰀂 ";
        tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
        format-linked = "{ifname} (No IP)";
        format-disconnected = "󰖪 ";
    };
    battery = {
        states = {
          good = 95;
          warning = 30;
          critical = 15;
        };
        format = "{icon} {capacity}%";
        format-charging = "󰂄 {capacity}%";
        format-plugged = "󱘖 {capacity}%";
        format-icons = ["󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
        format-alt = "{time} {icon}";
        on-click = "";
        tooltip = true;
        interval = 30;
        bat = "BAT1";
    };
    tray= {
        icon-size= 20;
        spacing= 10;
    };
    pulseaudio= {
        format= "{icon} {volume}%";
        format-muted= "󰖁 ";
        format-icons= {
            default= ["" " "];
        };
        scroll-step= 5;
        on-click= "pamixer -t";
    };
    "custom/power"= {
    	format= " 󰐥 ";
    	on-click= "pkill wofi || shutdown-script";
    };
    "backlight"= {
    	tooltip= false;
    	format= " {}%";
    	interval= 1;
    };
    "custom/launcher"= {
        format= " ";
        on-click= "pkill wofi || wofi --show drun";
        on-click-right= "pkill wofi || wallpaper-picker"; 
        tooltip= "false";
    };
  };
}
