Get Slack style emoji in your terminal! :heart: :+1:

Source the alias file one time

```bash
. <(curl -s https://raw.githubusercontent.com/rothgar/emoji-aliases/master/emoji.$(basename ${SHELL})
```

Or download the file and source it every time you start a shell

```bash
wget -O $HOME/.local/share/emoji.aliases \
    https://raw.githubusercontent.com/rothgar/emoji-aliases/master/emoji.aliases
echo ". $HOME/.local/share/emoji.aliases" >> $(echo $HOME/.$(basename $SHELL)rc)
```

Generate an emoji.aliases file
```
./generate-aliases.sh
```
