{pkgs, ... }: { 
	environment.systemPackages = with pkgs;[
	vscode
	qt5.qtgraphicaleffects
	git

	];

}
