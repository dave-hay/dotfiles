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
git clone --recursive git@github.com:hayitsdavid/dotfiles.git
```

3. Download dependencies

```shell
# download homebrew files
brew bundle --file ~/dotfiles/Brewfile

# Volta - NPM
curl https://get.volta.sh | bash
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

- [pyenv](https://github.com/pyenv/pyenv) manages python versions.
- If you want to create a virtual enviroment use
  [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv),
  - `pyenv virtualenv <some_venv>`
  - `pyenv local <some_venv>`

- [Volta](https://docs.volta.sh/guide/) manages node versions and global
  packages.
  - `volta install <package>` = install a global package
  - `volta list` = show all global packages
  - `volta pin <node@???> <npm@???>` = set node or npm version in project dir
