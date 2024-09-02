{

  description = "My DotFiles";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:megadrage/nixvim-conf";
    stylix.url = "github:danth/stylix";
  };

  outputs = { stylix, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          inherit system;
          modules = [
            stylix.nixosModules.stylix
            ./core/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                backupFileExtension = "$HOME/backup.hm";
                users.megadrage = { imports = [ ./home/home.nix ]; };
              };
            }
          ];
          specialArgs = { inherit inputs; };
        };
      };
    };
}
