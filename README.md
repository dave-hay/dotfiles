# David's Dotfiles

## Steps to bootstrap a new Mac

1. Install Apple's CLI Tools and Homebrew

```shell
xcode-select --install
```

```shell
# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Clone dotfile repo while in home directory

```shell
git clone --recursive https://github.com/dave-hay/dotfiles.git
cd dotfiles
```

4. Download dependencies from Homebrew

```shell
# download homebrew files
brew bundle --file ~/dotfiles/Brewfile
```

4. Run dotbot executable to create symlinks

```shell
./install
```

5. Install languages

```shell
rtx install
```

6. To install useful key bindings and fuzzy completion

```shell
$(brew --prefix)/opt/fzf/install
```

6. Install Neovim dependencies

```shell
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

## Notes

Order of zsh file loading

```shell
$ZDOTDIR/.zshenv
$ZDOTDIR/.zprofile
$ZDOTDIR/.zshrc
$ZDOTDIR/.zlogin
$ZDOTDIR/.zlogout
```
