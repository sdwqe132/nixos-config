{ pkgs, ... }: {
  services.displayManager.sddm = {
    enable = true;
    theme = "${pkgs.stdenv.mkDerivation {
      name = "makima";
      src = pkgs.fetchFromGitHub {
        owner = "Arnau029";
        repo = "Makima-SDDM";
        rev = "main"; # или укажите нужную версию
        sha256 = "N/h0feb9GNTDYsv4qc2syy12sUWx1x2SOAJyfjV8ZAo=";
      };
      installPhase = ''
        mkdir -p $out
        cp -R ./* $out/
      '';
    }}";
  };
}
