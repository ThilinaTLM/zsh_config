```
     _____ _     __  __ 
    |_   _| |   |  \/  |
      | | | |   | |\/| |
      | | | |___| |  | |
      |_| |_____|_|  |_|

    @ThilinaTLM
    @ZSH Configuration + Shell Scripts
```

# Dependencies

## Tools

Install prerequisites in linux,
```bash 
sudo pacman -S fzf bat exa
sudo dnf install fzf bat exa
sudo apt install fzf bat
```

## Prompt

```bash
curl -sS https://starship.rs/install.sh | sh
```

# Setup

```bash
git clone https://github.com/ThilinaTLM/zsh_config.git ~/.config/zsh --depth=1
cd ~/.config/zsh
chmod +x ./install.sh
./install.sh
```

One command install,
```bash
curl -Ss https://raw.githubusercontent.com/ThilinaTLM/zsh_config/main/install.sh | sh
```




