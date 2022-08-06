#==============
# Install all the packages
#==============
sudo chown -R $(whoami):admin /usr/local
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# So we use all of the packages we are about to install
echo "export PATH='/usr/local/bin:$PATH'\n" >> ~/.bashrc
source ~/.bashrc

#==============
# Remove old dot flies
#==============
# sudo rm -rf ~/.zshrc > /dev/null 2>&1
# sudo rm -rf ~/.gitconfig > /dev/null 2>&1
# sudo rm -rf ~/.config > /dev/null 2>&1
# sudo rm -rf ~/Brewfile > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
SYMLINKS=()
ln -sf ~/dotfiles/zsh/zsh_prompt ~/.zsh_prompt
SYMLINKS+=('.zsh_prompt')
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
SYMLINKS+=('.zshrc')
ln -sf ~/dotfiles/config ~/.config
SYMLINKS+=('.config')
ln -sf ~/dotfiles/homebrew/Brewfile ~/Brewfile
SYMLINKS+=('Brewfile')


if [ -n "$(find ~/dotfiles/custom-configs -name gitconfig)" ]; then
    ln -s ~/dotfiles/custom-configs/**/gitconfig ~/.gitconfig
else
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
fi
SYMLINKS+=('.gitconfig')

echo ${SYMLINKS[@]}

# hack for... I'm not even sure what... sqlite working in Python with pyenv?
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

cd ~
brew bundle
cd -

#==============
# Set zsh as the default shell
#==============
chsh -s /bin/zsh

#==============
# Neovim
#==============
mkdir -p ~/.config/nvim/plugin
mkdir -p ~/.config/nvim/after/plugin
mkdir -p ~/.config/nvim/lua

# link wholesale
for f in `find . -regex ".*\.vim$\|.*\.lua$"`; do
    rm -rf ~/.config/nvim/$f
    ln -s ~/.dotfiles/vim/$f ~/.config/nvim/$f
done

#==============
# And we are done
#==============
echo -e "\n====== All Done!! ======\n"
echo
echo "Enjoy -David"
