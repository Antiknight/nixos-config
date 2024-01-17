{inputs, username, config, nix-colors, ...}:
{
  programs.waybar.style = ''
* {
    font-family: 'Iosevka Nerd Font';
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
    background-color: #1b1a1d;
    border-radius: 10px;
    padding: 0;
    margin: 5px 0 5px 0;
}

.modules-left {
    margin-left: 0.1rem;
    background-color: #1b1a1d;
    margin-top: 5px;
    margin-bottom: 5px;
    padding: 1px 0px;
    border-radius: 10px;
}

.modules-center {
    padding: 0px;
    margin: 5px 0 5px 0;
}

tooltip {
    background: #1b1a1d;
    border-radius: 10px;
}

tooltip label {
    color: #ebdbb2;
    background-color: #1b1a1d;
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
    color: #c3b28b;
    font-weight: bolder;
    font-style: normal;
    margin: 0.2rem 0.1rem;
    border-radius: 20px;
}

#workspaces button:hover {
    box-shadow: inherit;
    text-shadow: inherit;
    background-color: #c3b28b;
    color: #1b1a1d;
    border-radius: 10px;
}

#workspaces button.active {
    color: #313036;
    background-color: rgba(166, 145, 96, 0.9);
    transition: all 0.1s ease-in-out;
    border-radius: 20px;
}

#clock {
    font-family: 'Iosevka Nerd Font';
    color: rgb(195, 178, 139);
    background-color: #1b1a1d;
    padding: 0 1.5em 0 1.5em;
    border-radius: 10px 10px 10px 10px;
}

#memory {
    color: #a9b665;
    padding: 0 0.3em 0 0.5em;
    border-radius: 10px 0 0 10px;
}

#wireplumber,
#wireplumber.muted {
    margin: 0;
    padding: 0 0.5em 0 0.4em;
    color: #7fbbb3;
}

#backlight {
    margin: 0;
    padding: 0 0.5em 0 0.4em;
    color: #d8a657;
}

#cpu {
    margin: 0;
    padding: 0 0.1em 0 0.1em;
    color: #a9b665;
}

#network {
    margin: 0;
    padding: 0 0.4em 0 0.5em;
    color: #7fbbb3;
}

#custom-cycle_wall {
    margin: 0;
    padding: 0 0.5em;
    color: #e67e80;
}

#tray {
    margin: 0;
    padding-right: 10px;
    color: #d3869b;
    border-radius: 0 10px 10px 0;
}

#battery {
    margin: 0;
    padding: 0 0.5em 0 0.8em;
    color: #a9b665;
}

#disk {
    margin: 0;
    padding: 0 0.1em 0 0.1em;
    color: #a9b665;
}

#window {
    color: #ebdbb2;
    margin-left: 0rem;
    margin-right: 1rem;
    text-shadow: 0 0 5px rgba(0, 0, 0, 0.818);
    transition: all 0.1s ease-in-out;
    border-radius: 0px;
    font-size: 15px;
}
 '';
}
