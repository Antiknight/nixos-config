{ inputs, pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
	  colorschemes.tokyonight.enable = true;
    colorschemes.tokyonight.transparent = true;
  
    plugins.telescope.enable = true;
	  plugins.treesitter.enable = true;
	  plugins.which-key.enable = true;

	  options = {
	    relativenumber = true;
	    tabstop = 2;
    };
  };
}
