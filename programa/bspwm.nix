{ config, pkgs, ... }:
{
  # Включить X Server
  services.xserver = {
    enable = true;
    layout = "us"; # Раскладка клавиатуры

    # Включить bspwm и sxhkd
    windowManager.bspwm = {
      enable = true;
      sxhkd.enable = true; # Управление горячими клавишами
    };

    # Display Manager (например, LightDM)
    displayManager = {
      lightdm.enable = true;
      defaultSession = "none+bspwm";
    };
  };

  # Установить дополнительные пакеты
  environment.systemPackages = with pkgs; [
    bspwm    # Сам оконный менеджер
    sxhkd    # Менеджер горячих клавиш
    alacritty  # Терминал (или другой на ваш выбор)
    rofi      # Лаунчер приложений
    picom     # Композитор для эффектов
    nitrogen  # Установка обоев
    feh       # Просмотр изображений (часто используется для обоев)
  ];
}
