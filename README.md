```
     _____ _     __  __ 
    |_   _| |   |  \/  |
      | | | |   | |\/| |
      | | | |___| |  | |
      |_| |_____|_|  |_|

    @ThilinaTLM
    @ZSH Configuration + Shell Scripts
```

# Prerequisites

## Tools

Install prerequisites in linux,
```bash 
sudo pacman -S git fzf bat exa zsh
sudo dnf install git fzf bat exa zsh
sudo apt install git fzf bat exa zsh
```

## Prompt

Install `starship` prompt,
```bash
curl -sS https://starship.rs/install.sh | sh
```

## Default shell

Make `zsh` is default shell,
```
chsh -s $(command -v zsh)
```

# Setup ZSH Configuration

Single command installation,
```bash
curl -Ss https://raw.githubusercontent.com/ThilinaTLM/zsh_config/main/install.sh | zsh
```

> Use single command installation if it works

Manual installation,
```bash
git clone https://github.com/ThilinaTLM/zsh_config.git ~/.config/zsh --depth=1
cd ~/.config/zsh
chmod +x ./install.sh
./install.sh
```





