# David's Dotfiles

## Configs
[pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)
Make new venv`pyenv virtualenv <somevenv>`

## Steps to bootstrap a new Mac

1. Install Apple's CLI Tools,

```shell
xcode-select --install
```

2. Clone repo into new hidden directory

```shell
# SSH
git clone "ADD REPO"
```

3. Create symlinks in the Home dir to real files in repo.

```shell
# There are better and less manual ways to do this;
# Investigate install scripts and bootstraping toolsetter

ln -s ~/.dotfiles/.zshrc ~/.zshrc

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

4. Pass in the Brewfile location...

```shell
brew bundle --file ~/.dotfiles/Brewfile
brew bundle dump
```

5. For node NVM
   https://github.com/nvm-sh/nvm

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/<version>/install.sh | bash
```
