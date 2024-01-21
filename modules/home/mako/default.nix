{ config, pkgs, ... }: 
{
  services = {
    mako = {
      enable = true;
      font = "JetBrainsMono Nerd Font 12";
      padding = "15";
      defaultTimeout = 10000;
      borderSize = 2;
      borderRadius = 5;
      backgroundColor = "#${config.colorScheme.colors.base00}";
      borderColor = "#${config.colorScheme.colors.base00}";
      #progressColor = "over #313244";
      textColor = "#${config.colorScheme.colors.base05}";
      icons = true;
      actions = true;
      extraConfig = ''
        text-alignment=center
        [urgency=low]
        border-color=#${config.colorScheme.colors.base00}
        [urgency=normal]
        border-color=#${config.colorScheme.colors.base0A}
        [urgency=high]
        border-color=#${config.colorScheme.colors.base08}
      '';
    };
  };
}
