Вернуться в: [[Утилиты]]

[[документация по консольным утилитам ч2.pdf]]
[[FishKitty]]

Изучить:
fzf
ripgrep
bat
eza
lf

### Micro (text editor)
[Official site](https://micro-editor.github.io/)

### Mitmproxy
[Official site](https://mitmproxy.org/)
```bash
brew install mitmproxy
```

### Fish
#### Install
```bash
brew install fish
fish_add_path /opt/homebrew/bin
fish_add_path /Users/a.a.novik/Library/Android/sdk/platform-tools
which fish|pbcopy 
sudo nano /etc/shells
paste /opt/homebrew/bin/fish
chsh -s /opt/homebrew/bin/fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
eval (/opt/homebrew/bin/brew)
fisher install patrickf1/fzf.fish
brew install fzf
fisher install ilancosman/tide@v6
```

