Вернуться в: [[Terminal]]

# Устанавливаем необходимый софт
## Brew package manager
[brew](https://brew.sh/) `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
## Kitty
[kitty](https://sw.kovidgoyal.net/kitty/binary/) - `curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`
## Fishshell
[fishshell](https://fishshell.com/) - `brew install fish`
## Устанавливаем fishshell дефолтным шелом
`sudo <editor> /etc/shells` добавляем в конец `/opt/homebrew/bin/fish`
`chsh -s /opt/homebrew/bin/fish`
## FZF консольная тула для фази выбора из файла или stdin
## [fzf](https://github.com/junegunn/fzf) - `brew install fzf`
## Nerd Fonts
Шрифты с кастомными глифами. Широко используются многими консольными утилитами. В нашем случае они нужны для tide prompt с опцией `Many icons`
https://github.com/IlanCosman/tide?tab=readme-ov-file#fonts
## Ripgrep, если вдруг у кого-то еще не стоит
`brew install ripgrep` - замена старому доброму `grep`

## Fisher плагин менеджер для fish
[fisher](https://github.com/jorgebucaran/fisher) - `curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher`
### Плагины для fisher
Устанавливаются fisher <полное имя плагина как в списке ниже>
- patrickf1/fzf.fish Ctrl+R использует fzf для поиска по истории
- jethrokuan/z Навигация через z <имя папки>. Чтобы заработало надо сначала попереходить в нужные папки через cd <имя папки>
- gregorias/bookmarks.fish Букмарки, для удобной работы лучше задать алиасы s, d, g, ss
- ilancosman/tide@v6 - Удобный катомизируемый промпт с асинхронным обновлением
- meaningful-ooo/sponge - Поддержание истории в чистоте, автоматически стирает оттуда команды если они неуспешны (но оставляет если хотябы раз команда была выполнена успешно).

# Остальные файлы в архиве
Поскольку по умолчанию в Mac Finder файлы начинающиеся с `.` не показываются после разархивирования рекомендуется в Finder нажать ⌘ + ⇧ + .
Появится скрытая по умолчанию папка .config

Основная кофигурация fish на маке лежит в ~/.config/fish. Туда можно скопировать часть файлов из этого архива, например:
- .config/fish/config.fish Пример конфига fish. Скопировать себе и допилить.
- .config/fish/functions Примеры функций о которых я рассказывал.

Конфигурация Kitty на маке лежит в ~/.config/kitty/kitty.conf
В архиве лежит конфигурация которую использую я. Использовать для вдохновления.