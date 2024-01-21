{ lib, inputs, config, ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    settings = {
      right_format = "$cmd_duration";
      
      directory = {
        format = "[ ](bold #${config.colorscheme.colors.base0D})[ $path ]($style)";
        style = "bold #${config.colorscheme.colors.base07}";
      };

      character = {
        success_symbol = "[ ](bold #${config.colorscheme.colors.base0D})[ ➜](bold green)";
        error_symbol = "[ ](bold #${config.colorscheme.colors.base0D})[ ➜](bold red)";
        # error_symbol = "[ ](bold #89dceb)[ ✗](bold red)";
      };

      cmd_duration = {
        format = "[]($style)[[󰔚 ](bg:#161821 fg:#d4c097 bold)$duration](bg:#161821 fg:#BBC3DF)[ ]($style)";
        disabled = false;
        style = "bg:none fg:#161821";
    };        

      # directory.substitutions = {
        # "~" = "󰋞";
        # "Documents" = " ";
        # "Downloads" = " ";
        # "Music" = " ";
        # "Pictures" = " ";
      # };

      #palette = "catppuccin_mocha";
    }; #// builtins.fromTOML (builtins.readFile "${inputs.catppuccin-starship}/palettes/mocha.toml");
  };
}
