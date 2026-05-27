{
  description = "Paul's Air-Gapped LazyVim Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages = {
          # Das definiert das Paket "nvim-min", das deine GitHub Action sucht
          nvim-min = pkgs.wrapNeovim pkgs.neovim-unwrapped {
            configure = {
              customRC = ''
                set runtimepath+=~/.config/nvim
                luafile ~/.config/nvim/init.lua
              '';
            };
          };
        };
        defaultPackage = self.packages.${system}.nvim-min;
      }
    );
}
