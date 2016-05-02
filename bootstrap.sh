# Download and install the Xcode Command Line Tools
if [[ ! -x /usr/bin/gcc ]]; then
  echo "Info   | Install   | xcode"
  xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
  echo "Info   | Install   | homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

# Modify the PATH
# This should be subsequently updated in shell settings
echo "Info   | Update   | PATH"
export PATH=/usr/local/bin:$PATH

echo "Info   | Update   | homebrew"
brew update

# # Download and install zsh
# if [[ ! -x /usr/local/bin/zsh ]]; then
#   echo "Info   | Install   | zsh"
#   brew install zsh
# fi

# Download and install git
if [[ ! -x /usr/local/bin/git ]]; then
  echo "Info   | Install   | git"
  brew install git
fi

# # Download and install python
# if [[ ! -x /usr/local/bin/python ]]; then
#   echo "Info   | Install   | python"
#   # brew install python --framework --with-brewed-openssl
# fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
  echo "Info   | Install   | Ansible"
  brew install ansible
fi
