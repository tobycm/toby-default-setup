sudo apt-get install wget -y

VERSION="0.16.5" # Set this to the desired version
BASE_URL="https://github.com/asdf-vm/asdf/releases/download/v$VERSION"

INSTALL_DIR="$HOME/.asdf"

# Detect architecture and OS
OS="$(uname -s | tr '[:upper:]' '[:lower:]')"
ARCH="$(uname -m)"

case "$ARCH" in
x86_64) ARCH="amd64" ;;
i686 | i386) ARCH="386" ;;
arm64 | aarch64) ARCH="arm64" ;;
*)
    echo "Unsupported architecture: $ARCH"
    exit 1
    ;;
esac

# Construct file names
TARBALL="asdf-v${VERSION}-${OS}-${ARCH}.tar.gz"
MD5SUM="${TARBALL}.md5"

# Download files
wget "$BASE_URL/$TARBALL" -O "asdf.tar.gz"
wget "$BASE_URL/$MD5SUM" -O "asdf.md5"

# Verify checksum
EXPECTED_HASH=$(cat asdf.md5)
ACTUAL_HASH=$(md5sum asdf.tar.gz | awk '{print $1}')
if [[ "$EXPECTED_HASH" != "$ACTUAL_HASH" ]]; then
    echo "MD5 checksum failed!"; exit 1;
fi

rm asdf.md5

# Extract and rename
mkdir -p $INSTALL_DIR
tar -xf asdf.tar.gz -C $INSTALL_DIR
rm asdf.tar.gz

echo "asdf downloaded and extracted successfully!"

$INSTALL_DIR/asdf completion zsh > $INSTALL_DIR/completions.zsh
