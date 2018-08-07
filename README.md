# Swift templates of MVVM+Rx architecture
### Setup via xCode Templates

This section about native templates used by xCode

### Auto syncing

1) You need to clean up you Templates folder in xCode location. For this you need open in finder folder below and move all files to trash:
```
~/Library/Developer/Xcode/Templates/
```

2) Clone this repo in special place on you disc :)

3) Next, we create simlink to EACH template, that you needed in templates section:
```
ln -sfv /Users/IvanTheTerrible/Documents/git-repos/alobanov/vps-template/rx_mvvm_controller/RxViewModel ~/Library/Developer/Xcode/Templates/
```

!ATTENTION! To correct create simlink you MUST use only ABSOLUTE path of git repo!
Check in folder for success creation folders

4) That is all! After this add some helpful bash command in you .bash_profile files
```
# xCode templates
alias xCode_update_templates="cd ~/Documents/git-repos/alobanov/vps-template; git pull"
```

Do not forget make `source ~/.bash_profile` in you terminal for start using update command.

Now you can type in terminal: `xCode_update_templates`
