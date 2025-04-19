{ pkgs, ... }: {
  boot.loader = {
    grub = {
      enable = true;
      device = "/dev/sda";  # Укажите ваш диск (например, /dev/sda, /dev/nvme0n1 и т. д.)
      efiSupport = false;   # ← Отключено, так как это Legacy BIOS
      useOSProber = true;
      theme = pkgs.fetchFromGitHub {
        owner = "kirakiraAZK";
        repo = "suiGRUB";
        rev = "master";
        sha256 = "besErd3N+iVGiReYGzo6H3JKsgQOyRaRbe6E0wKKW54=";
      };
    };
  };
}
