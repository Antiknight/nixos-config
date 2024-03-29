{ pkgs, config, ... }:

{
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
    window = {
    	decorations = "none";
      opacity = 0.9;
    	dynamic_padding = true;
    	padding = {
    	  x = 10;
    	  y = 2;
    	};
    };
    mouse.hide_when_typing = true;
    font = {
    	normal.family = "JetBrainsMono Nerd Font";
    	bold.family = "JetBrainsMono Nerd Font";
    	italic.family = "JetBrainsMono Nerd Font";
    	size = 14;
    };
 
    colors = with config.colorScheme.colors; {
      bright = {
        black = "0x${base00}";
        blue = "0x${base0D}";
        cyan = "0x${base0C}";
        green = "0x${base0B}";
        magenta = "0x${base0E}";
        red = "0x${base08}";
        white = "0x${base06}";
        yellow = "0x${base09}";
      };
      cursor = {
        cursor = "0x${base06}";
        text = "0x${base00}";
      };
      normal = {
        black = "0x${base00}";
        blue = "0x${base0D}";
        cyan = "0x${base0C}";
        green = "0x${base0B}";
        magenta = "0x${base0E}";
        red = "0x${base08}";
        white = "0x${base06}";
        yellow = "0x${base0A}";
      };
      primary = {
        background = "0x${base00}";
        foreground = "0x${base05}";
      };
      draw_bold_text_with_bright_colors = true;
    };
  };
}
