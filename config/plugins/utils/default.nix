pkgs: build: {
  imports = [
    ./lualine
    ./which-key
    (import ./telescope pkgs build)
    (import ./silicon.nix pkgs build)
    (import ./grug-far.nix pkgs build)
  ];

  extraPlugins = with pkgs.vimPlugins; [
    harpoon2
    range-highlight-nvim
  ];

  plugins = {
    alpha = import ./alpha.nix;
    todo-comments = import ./todo-comments.nix;

    mini.modules = {
      files = {
        content = {};
        mappings = {
          go_in = "<cr>";
          go_out = "-";
          show_help = "?";
        };
        windows = {
          preview = true;
          width_preview = 40;
        };
      };
      surround = {};
      cursorword = {};
    };

    nvim-colorizer = {
      enable = true;
      userDefaultOptions.names = false;
    };

    rest.enable = true;
    noice.enable = true;
    notify.enable = true;
    neotest.enable = true;
    helpview.enable = true;
    undotree.enable = true;
  };
}
