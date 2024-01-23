{ pkgs, ... }: 
{
  networking = {
    hostName = "galaxy";
    networkmanager.enable = true;
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}
