#!/usr/bin/env bash

# Create helper to determine if AwesomeBashOnWindows is installed
is_installed () {
  grep ". ~/awesome_bash_on_windows/main.bash" ~/.bashrc &> /dev/null
}

# Copy source files
rm -rf ~/awesome_bash_on_windows
cp -rf src ~/awesome_bash_on_windows

# If AwesomeBashOnWindows already installed, leave
is_installed && echo "# AwesomeBashOnWindows already installed" && exit 0

# Add AwesomeBashOnWindows invocation to .bashrc
echo "# Installing AwesomeBashOnWindows"
echo "
# Source AwesomeBashOnWindows main script
. ~/awesome_bash_on_windows/main.bash
" >> ~/.bashrc

# If AwesomeBashOnWindows is being loaded, leave
is_installed && echo "# AwesomeBashOnWindows installation completed!!" && exit 0

# Otherwise, notify the user an error
echo "# We cannot confirm that AwesomeBashOnWindows has installed properly" 1>&2
echo "# Please open a new terminal window to confirm" 1>&2
exit 1
