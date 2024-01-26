{ inputs, pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
	  colorschemes.tokyonight.enable = true;
    colorschemes.tokyonight.transparent = true;
		clipboard.providers.wl-copy.enable = true;
    
    plugins.telescope.enable = true;
	  plugins.treesitter = {
      enable = true;
    };
	  plugins.which-key.enable = true;
		plugins.lsp.enable = true;
    
	  options = {
	    relativenumber = true;
	    tabstop = 2; 
			shiftwidth = 2;
			expandtab = true;
			smartindent = true;
    };

		globals.mapleader = " ";
    keymaps = [
		{
		  key = "<leader>ff";
			action = "<cmd>Telescope find_files<CR>";
    }
		];
  };
}
