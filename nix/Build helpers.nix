nix-build -E 'with import <nixpkgs> {}; callPackage ./default.nix {}'

python -m venv venv ; source venv/bin/activate ; pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm6.2 ; pip install -r requirements.txt ; pip install open-clip-torch ; python main.py --listen 127.0.0.1




#!/bin/bash
STORE_PATH=$(readlink -f "$(which Devil-Diffusion-env)")
export "DEVILDIR=$HOME"/"Devil-Diffusion"

check_and_copy_files() {
  local source_directory="$STORE_PATH"
  local target_directory="$DEVILDIR"

  # Find all files and directories in the source directory recursively
  find "$source_directory" -type f -o -type d | while read -r item; do
    # Check if the item exists in the target directory
    if [ -e "$target_directory"/"$item" ]; then

      echo " file ""$item"" already exists in ""$target_directory"", skipping."
    else
      # If the item doesn't exist, copy it over
      if [ -d "$source_directory"/"$item" ]; then
        mkdir -p "$target_directory"/"$item" && echo "Directory ""$item"" copied to ""$target_directory""."
      else
        cp "$source_directory"/"$item" "$target_directory"/"$item" && echo File "$item" copied to "$target_directory"
      fi
    fi
  done
}

    echo "$STORE_PATH"
    echo "DEBUG::: STORE_PATH = ""$STORE_PATH"""


      if [ ! -d "$DEVILDIR" ]; then

      echo "DEBUG::: Directory not found, creating."


      mkdir -p "$DEVILDIR"
      cd "$DEVILDIR"

      echo "DEBUG::: Directory created and CDed."
      echo "DEBUG::: Setting Enviroment variables for runtime again."

      export "DEVILDIR=$HOME"/"Devil-Diffusion"
      echo "Done. Advancing."

      else
        echo "DEBUG::: Directory exits, advancing.."
        cd "$DEVILDIR"

    fi
#    echo "Copying tarball contents from "$STORE_PATH"."
check_and_copy_files


cd "$DEVILDIR"
echo "where am i?"
echo "$PWD"

echo "whats in here?"
ls -al "$PWD"
