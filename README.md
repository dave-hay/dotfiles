# David's Dotfiles

## Steps to bootstrap a new Mac

1. Install Apple's CLI Tools, Homebrew and oh-my-zsh

```shell
xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. Clone repo in home directory

```shell
git clone git@github.com:hayitsdavid/dotfiles.git
```

3. Download dependencies

```shell
# download homebrew files
brew bundle --file ~/dotfiles/Brewfile

# dotbot
git submodule update --remote dotbot

# NVM
# Check https://github.com/nvm-sh/nvm to make sure it's the latest version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

4. Run dotbot executable to create symlinks

```shell
./install
```

5. DONE! Enjoy

## Notes  

For Python if you want to create a virtual enviroment use [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv), by running the command `pyenv virtualenv <somevenv>`.
