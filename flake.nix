{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs@{ self
    , flake-parts
    , nixpkgs
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

      perSystem =
        { config
        , pkgs
        , system
        , ...
        }:
        let
          devInputs = with pkgs; [
            corepack
            nodejs
            nodePackages.svelte-language-server
            nodePackages.typescript-language-server
          ];
        in
        {
          devShells.default = pkgs.mkShell {
            packages = devInputs;
          };
        };
    };
}
