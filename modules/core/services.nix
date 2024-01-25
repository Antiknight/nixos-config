{ ... }: 
{
  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    logind.powerKey = "suspend";
    logind.lidSwitch = "suspend-then-hibernate";
  };
}
