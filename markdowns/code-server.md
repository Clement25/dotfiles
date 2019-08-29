# Run VS code on remote server
Code server demo:

![code-server-demo](../images/code-server.gif)

## Installation
Run the following script it will create a `code-server` folder in your home directory and install it there


Copy paste this code to your terminal for installation: 
```bash
wget https://gist.githubusercontent.com/Emrys-Hong/0aaccb17af5f896af1e9d00f8cf5b7f1/raw/59111f7ac80783f0d049334440a9d3f671d74031/code-server-setup.sh  -O - | bash
```


You can install the latest the release [here](https://github.com/cdr/code-server/releases), and paste the url to `release=https://latest-release` in the [following script](https://gist.github.com/Emrys-Hong/0aaccb17af5f896af1e9d00f8cf5b7f1)


Installation is Done!


## Run the code server
On server, key in the following command, `<port_number>` can be any four digit integer you like:\
`code <folder_name> --port=<port_number>`

On local machine:\
`ssh -N -L 0.0.0.0:<port_number>:localhost:<port_number> username@ip`

Congratulations, you can open vscode in your browser now.\

The default port number is 8080, If you meet any error, probably somebody is already using that port, choose another port mapping by `--port=<another_port_number>`.


## Vscode setup: Install pylint for code navigation(Optional):
1. Go to extension
2. Search extension `Python` and install. (reload if it requires)
3. It will prompt you to install pylint also, you can install it with `pip` or `conda`
4. Now you can pick function definition by `<command> + <click function>`

## Makes it look better!(Optional):
1. Hide bookmarks in chrome to make screen look bigger: \
`<command> + <shift> + b`
2. This step is only for how to enable mac shortcut `<command+w>` to close the window in your browser. Step 1, you need to first disable the `Close Tab` option in your browser. Settings > Keyboard > shortcuts >  App Shortcus and add a shortcut by choosing Application to be your second favourite browser(if you do it in your best browser, you will not use that shortcut in that browser), Menu Title: `Close Tab`, Keyboard shortcut: `Control + q`. Step 2 in you vscode Keyboard Shortcuts: set `workbench.action.closeGroup` and `workbench.action.closeActiveEditor` and `close Window` to `<Command + w>`.
3. This step is for how to enable pressAndHold key for browser for Vim-Vscode for Mac. In your terminal enter  `defaults write -g ApplePressAndHoldEnabled -bool false` and restart your computer to apply the changes.
4. vim code is not able to run all the vim commands such as `]m` for next function.

## What else you can do
Drag file to vscode and it automatically upload to server.

## References:
code server github:
https://dev.to/babak/how-to-run-vs-code-on-the-server-3c7h

code server tutorial:
https://github.com/cdr/code-server
