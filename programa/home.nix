{ homeStateVersion, user, pkgs, lib, ... }: {

  imports = [
    ./programa.nix
  ];

  home = {
    username = user;
    homeDirectory = lib.mkForce "/home/${user}";
    stateVersion = homeStateVersion;
  };
}
