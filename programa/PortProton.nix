{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWowPackages.stable
    winetricks
    gamemode
    vulkan-tools
    vulkan-loader
    xorg.libX11
    libpulseaudio
    zenity
    wget
    curl
    bash
    coreutils
    glxinfo
    p7zip
    cabextract
  ];
}
