Get Slack style emoji in your terminal! :heart: :+1:

![demo](img/demo.gif)

Source the alias file one time

```bash
. <(curl -s https://raw.githubusercontent.com/rothgar/emoji-aliases/master/emoji.zsh)
```

Or download the file and source it every time you start a shell

```bash
wget -O $HOME/.local/share/emoji.aliases \
    https://raw.githubusercontent.com/rothgar/emoji-aliases/master/emoji.zsh
echo ". $HOME/.local/share/emoji.zsh" >> $(echo ${ZDOTDIR:-$HOME}/.zshrc)
```

Generate an emoji.aliases file
```
./generate-aliases.sh
```
