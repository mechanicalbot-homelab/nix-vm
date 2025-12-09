{ ... }:
{
  imports = [
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix = {
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      persistent = true;
      dates = "daily";
      options = "--delete-older-than 7d";
    };
  };
}
