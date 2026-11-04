{
  description = "Raspberry Pi Pico C/C++ SDK dev shell";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      forAll = f: nixpkgs.lib.genAttrs systems (s: f nixpkgs.legacyPackages.${s});
    in
    {
      devShells = forAll (pkgs: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            cmake
            gcc-arm-embedded
            picotool
            python3
            minicom
          ];

          PICO_SDK_PATH = "${pkgs.pico-sdk.override { withSubmodules = true; }}/lib/pico-sdk";
        };
      });
    };
}
