{config, lib, pkgs, ... }: {
	home.packages = with pkgs; [
	 #Приложение
	google-chrome
	vim
	flatpak
	telegram-desktop
	qbittorrent
	libreoffice-qt6-fresh
	#Утилиты
	cava
	appimage-run
	w3m
	git
	fastfetch
	];
}
