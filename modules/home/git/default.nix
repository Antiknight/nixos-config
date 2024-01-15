{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    userName = "Antiknight";
    userEmail = "leo@jmohr.net";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  home.packages = [ pkgs.gh ];
}
