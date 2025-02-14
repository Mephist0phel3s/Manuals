{ ... }:

let
  pkgs = import <nixpkgs> { };

in pkgs.mkShell rec {
  # Name of the shell
  name = "python-program";

  # Build dependencies
  buildInputs = with pkgs;
    [
      git # The program instantly crashes if git is not present, even if everything is already downloaded
      python312Full

    ];

  # Custom shell hook for setting up environment
  shellHook = ''

    SOURCE_DATE_EPOCH=$(date +%s)
    export "LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${LD_LIBRARY_PATH}"
    VENV=venv

    # Create virtual environment if it doesn't exist
    if test ! -d $VENV; then
      python3.12 -m venv $VENV
    fi
    source ./$VENV/bin/activate
    export PYTHONPATH=`pwd`/$VENV/${pkgs.python312Full.sitePackages}/:$PYTHONPATH



  '';

  # Post shell hook to set Python environment properly
  postShellHook = ''
    ln -sf ${pkgs.python312Full.sitePackages}/* ./venv/lib/python3.12/site-packages
  '';

  # Environment variables
  ROCM_PATH= pkgs.lib.optionalString ( variant == "ROCM") pkgs.rocmPackages.rocm-smi;
}
