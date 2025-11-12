{
  description = "Lily Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";

      globalModules = [
        ./modules/helix/home.nix
	./modules/niri/home.nix
        ./modules/cursor/home.nix
        ./modules/fonts/home.nix
        ./modules/hyfetch/home.nix
        ./modules/mpv/home.nix
        ./modules/firefox/home.nix
        ./modules/vesktop/home.nix
      ];
    in {
      nixosConfigurations.nixos-uwu = nixpkgs.lib.nixosSystem {
        inherit system;
        modules =
          globalModules
          ++ [
            ./configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.lily = import ./home.nix;
              home-manager.backupFileExtension = "backup";
            }
          ];
      };
    };
}

