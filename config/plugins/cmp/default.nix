{
  imports = [
    ./cmp.nix
    # (import ./chainsaw.nix build)
  ];

  plugins = {
    emmet.enable = true;
    # copilot-lua = import ./copilot.nix; # NOTE: I ain't paying $10 a month or $100 a year
  };
}
