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
git clone --recursive git@github.com:dave-hay/dotfiles.git
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
nvim --headless -c "MasonInstall lua-language-server bash-language-server html-lsp typescript-language-server" -c qall
nvim --headless -c "MasonInstall beautysh black prettier prettierd stylua" -c qall
```

6. Tmux

While in tmux run below to set up plugins.

```shell
# reload config file
C-a + r

# Install plugins
C-a + I
```

## Packages

### Tools

- Language manager [rtx](https://github.com/jdx/rtx)
- [ripgrep](https://github.com/BurntSushi/ripgrep) to search directory for regex pattern
- fd
- ffmpeg
- fzf
- gawk
- gh
- git
- git-lfs
- lazygit
- neovim
- pv
- tree
- See lines of code with [tokei](https://github.com/XAMPPRocky/tokei)

### Themes

- Theme [pure](https://github.com/sindresorhus/pure)
- LS_COLORS configure with [vivid](https://github.com/sharkdp/vivid)
  - brew install coreutils
  - alias ls="gls --color"

### Applications (casks)

- Anki
- Brave Browser
- Discord
- Figma
- iTerm2
- Karabiner
- Rectangle
- Notion
- VS Code

## Notes

Order of zsh files

```shell
$ZDOTDIR/.zshenv
$ZDOTDIR/.zprofile
$ZDOTDIR/.zshrc
$ZDOTDIR/.zlogin
$ZDOTDIR/.zlogout
```
