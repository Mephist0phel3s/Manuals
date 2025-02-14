hardware-configuration.nix = rec {

  (import <nixpkgs> {}) pkgs.runCommand "sh" ''

    nixos-generate-config --show-hardware-config | sed '$d' | sed '1,6d'
    ''
};
