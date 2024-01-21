{ pkgs, config, ... }: 
{
   programs.kitty = {
    enable = true;

#    theme = "kanagawa";
    
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 13;
    };

    settings = {
#      active_tab_foreground = "#${config.colorScheme.colors.base05}";
#      active_tab_background = "#${config.colorScheme.colors.base00}";

#      foreground = "#${config.colorScheme.colors.base05}";
#      background = "#${config.colorScheme.colors.base00}";
#      url_color = "#${config.colorScheme.colors.base0E}";


    
      confirm_os_window_close = 0;
      background_opacity = "0.55";  
      window_padding_width = 10;
      scrollback_lines = 10000;
      enable_audio_bell = false;
    };
  };
}
