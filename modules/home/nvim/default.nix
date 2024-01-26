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
      ensureInstalled = [
        "rust"
        "nix"
        "lua"
        "python"
        ];
      nixGrammars = true;
      nixvimInjections = true;
    };
    plugins.treesitter-context = {
      enable = true;
      maxLines = 3;
    };
    plugins.neo-tree = {
      enable = true;
      enableGitStatus = true;
    };

	  plugins.which-key.enable = true;
		plugins.lsp.enable = true;
    
	  options = {
      number = true;
	    relativenumber = true;
	    tabstop = 2; 
			shiftwidth = 2;
			expandtab = true;
			smartindent = true;
    };

		globals.mapleader = " ";
    keymaps = [
    {
      key = "<leader>e";
      mode = ["n" "v"];
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Neotree toggle";
      };
    }
		{
		  key = "<leader>ff";
			action = "<cmd>Telescope find_files<CR>";
    }
    {
      key = "<leader>fw";
      mode = ["n" "v"];
      action = ''function() require("telescope.builtin").live_grep() end'';
      lua = true;
      options = {
        desc = "Find Words";
      };
    }
		];
  };
}
