{ ... }: 
{
#  _module.args = { inherit custom; };
  imports =  [ (import ./waybar.nix)   ]
          ++ [ (import ./settings.nix) ]
          ++ [ (import ./style.nix)    ];
}
