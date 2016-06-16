# Gitignore.io function. More info at https://www.gitignore.io/docs
function gi() {
    curl -L -s https://www.gitignore.io/api/$@ ;
}

# Update system
function sys-update () {
    echo -e "\033[1;32mUPDATING SYSTEM\033[m"
    apt-get update -y && echo && apt-get upgrade -y && echo && apt-get dist-upgrade -y && echo
}

# Clean system
function sys-clean () {
    echo -e "\033[1;32mCLEANING SYSTEM\033[m"
    apt-get clean -y && echo && apt-get autoclean -y && echo && apt-get autoremove -y && echo && apt-get check -y && echo
}

# Update and clean system
function sys-uc {
    sys-update && sys-clean
}
