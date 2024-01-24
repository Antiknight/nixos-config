{ inputs, nixpkgs, self, username, nix-colors, nixvim, ...}:
let
  system = "x86_64-linux";
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  lib = nixpkgs.lib;
in
{
  galaxy = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit self inputs username nix-colors nixvim; };
    modules =
      [ (import ./bootloader.nix) ]
      ++ [ (import ./hardware.nix) ]
      ++ [ (import ./xserver.nix) ]
#      ++ [ (import ./steam.nix) ]
      ++ [ (import ./network.nix) ]
      ++ [ (import ./pipewire.nix) ]
      ++ [ (import ./program.nix) ]
      ++ [ (import ./security.nix) ]
      ++ [ (import ./services.nix) ]
      ++ [ (import ./system.nix) ]
      ++ [ (import ./user.nix) ]
      ++ [ (import ./wayland.nix) ]
#      ++ [ (import ./virtualization.nix) ]
      ++ [ (import ./../../hosts/galaxy/hardware-configuration.nix) ]
    ;
  };
}
