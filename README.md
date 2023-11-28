# David's Dotfiles

## Steps to bootstrap a new Mac

1. Install Apple's CLI Tools, Homebrew and oh-my-zsh

```shell
xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Clone repo in home directory

```shell
git clone --recursive https://github.com/dave-hay/dotfiles.git
```

3. Download dependencies

```shell
# download homebrew files
brew bundle --file ~/dotfiles/Brewfile
```

4. Run dotbot executable to create symlinks

```shell
./install
```

5. Neovim

```shell
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

## Notes

Order of zsh files

```shell
$ZDOTDIR/.zshenv
$ZDOTDIR/.zprofile
$ZDOTDIR/.zshrc
$ZDOTDIR/.zlogin
$ZDOTDIR/.zlogout
```
