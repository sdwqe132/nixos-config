{config, lib, pkgs, ... }: {
	environment.systemPackages = with pkgs; [
	 #Приложение
	google-chrome
	vim
	flatpak
	telegram-desktop
	qbittorrent
	libreoffice-qt6-fresh
	#Утилиты
	git
	fastfetch
	];
}
