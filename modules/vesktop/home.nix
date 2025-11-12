{lib, ...}: {
  programs.vesktop.enable = true;
  programs.vesktop = {
    settings = {
      tray = false;
      enableMenu = false;
      enableSplashScreen = false;
      spellCheckLanguages = ["en-US"];
    };

    vencord.settings = lib.importJSON /home/lily/nixos-dotfiles/secret-modules/vesktop/vencord-settings.json;
  };
}
