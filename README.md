# Neovim Configuration

## Installation

- Back up Neovim configuration files

```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- Clone the configruation files

```
git clone https://github.com/kayle06/nvim-conf ~/.config/nvim
```

- Remove the .git folder so you can add your own .git folder

```
rm -rf ~/.config/nvim/.git
```
