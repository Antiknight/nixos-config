{inputs, username, config, nix-colors, ...}:
{
  programs.waybar.style = ''
* {
    font-family: 'JetBrainsMono Nerd Font';
    font-size: 13px;
  /*font-weight: thin;*/
    border-radius: 0px;
    margin: 0;
}

window#waybar {
    background-color: transparent;
    border-radius: 10px;
    padding-top: 0px;
    margin-top: 0;
}

.modules-right {
    font-size: 10px;
    background-color: #${config.colorScheme.colors.base00};
    border-radius: 10px;
    padding: 0;
    margin: 5px 0 5px 0;
}

.modules-left {
    margin-left: 0.1rem;
    background-color: #${config.colorScheme.colors.base00};
    margin-top: 5px;
    margin-bottom: 5px;
    padding: 1px 0px;
    border-radius: 10px;
}

.modules-center {
    padding: 0px;
    margin: 5px 0 5px 0;
    border-radius: 10px;
    background-color: #${config.colorScheme.colors.base00};
}

tooltip {
    background: #${config.colorScheme.colors.base00};
    border-radius: 10px;
}

tooltip label {
    color: #${config.colorScheme.colors.base06};
    background-color: #${config.colorScheme.colors.base00};
    border-radius: 10px;
}

tooltip * {
    border-radius: 10px;
}

#workspaces {
    margin: 1px;
    margin-right: 0.3rem;
    margin-left: 0.3rem;
}

#workspaces button {
    margin: 0;
    background-color: #${config.colorScheme.colors.base00};
    color: #${config.colorScheme.colors.base06};
    font-weight: bolder;
    font-style: normal;
    margin: 0.2rem 0.1rem;
    border-radius: 20px;
}

#workspaces button:hover {
    box-shadow: inherit;
    text-shadow: inherit;
    background-color: #${config.colorScheme.colors.base04};
    color: #${config.colorScheme.colors.base09};
    border-radius: 10px;
}

#workspaces button.active {
    color: #${config.colorScheme.colors.base09};
    background-color: #${config.colorScheme.colors.base02};
    transition: all 0.1s ease-in-out;
    border-radius: 20px;
}

#clock {
    font-family: 'Iosevka Nerd Font';
    color: #${config.colorScheme.colors.base06};
    background-color: #${config.colorScheme.colors.base00};
    padding: 0 1.5em 0 1.5em;
    border-radius: 10px 10px 10px 10px;
}

#memory {
    color: #${config.colorScheme.colors.base06};
    padding: 0 0.3em 0 0.5em;
    border-radius: 10px 0 0 10px;
}

#wireplumber,
#wireplumber.muted {
    margin: 0;
    padding: 0 0.5em 0 0.4em;
    color: #${config.colorScheme.colors.base06};
}

#backlight {
    margin: 0;
    padding: 0 0.5em 0 0.4em;
    color: #${config.colorScheme.colors.base06};
}

#cpu {
    margin: 0;
    padding: 0 0.1em 0 0.1em;
    color: #${config.colorScheme.colors.base06};
}

#network {
    margin: 0;
    padding: 0 0.4em 0 0.5em;
    color: #${config.colorScheme.colors.base06};
}


#tray {
    margin: 0;
    padding-right: 10px;
    color: #${config.colorScheme.colors.base06};
    border-radius: 0 10px 10px 0;
}

#battery {
    margin: 0;
    padding: 0 0.5em 0 0.8em;
    color: #${config.colorScheme.colors.base06};
}

#disk {
    margin: 0;
    padding: 0 0.1em 0 0.1em;
    color: #${config.colorScheme.colors.base06};
}

#window {
    color: #${config.colorScheme.colors.base06};
    margin-left: 0rem;
    margin-right: 1rem;
    text-shadow: 0 0 5px rgba(0, 0, 0, 0.818);
    transition: all 0.1s ease-in-out;
    border-radius: 0px;
    font-size: 15px;
}
 '';
}
