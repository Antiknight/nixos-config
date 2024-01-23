{inputs, username, config, nix-colors, ...}: {
  imports =
       [(import ./waybar)]
    ++ [(import ./firefox)]
    ++ [(import ./hyprland)]
#    ++ [(import ./gaming)]
    ++ [(import ./git)]
    ++ [(import ./btop)]
    ++ [(import ./bat)]
    ++ [(import ./cava)]
    ++ [(import ./alacritty)]
#    ++ [(import ./kitty)]
    ++ [(import ./micro)]            # nano replacement
#    ++ [(import ./audacious)]       # music player
    ++ [(import ./discord)]         # discord with catppuccin theme
    ++ [(import ./swaylock)]
    ++ [(import ./wofi)]
    ++ [(import ./zsh)]
    ++ [(import ./gtk)]
    ++ [(import ./mako)]            # notification deamon
    ++ [(import ./scripts)]         # personal scripts
    ++ [(import ./starship)]
    ++ [(import ./nvim)]
    ++ [(import ./package)]
    ++ [nix-colors.homeManagerModules.default];

    colorScheme = nix-colors.colorSchemes.tokyodark-terminal;

}
