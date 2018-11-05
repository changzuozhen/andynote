```
Command line instructions

Git global setup
git config --global user.name "changzuozhen"
git config --global user.email "email address"

Create a new repository
git clone git@git***.com:user/folder_path.git
cd folder_path
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Existing folder
cd existing_folder
git init
git remote add origin git@git***.com:user/folder_path.git
git add .
git commit -m "Initial commit"
git push -u origin master

Existing Git repository
cd existing_repo
git remote add origin git@git***.com:user/folder_path.git
git push -u origin --all
git push -u origin --tags


cat ~/.ssh/id_rsa.pub

ssh-keygen -t rsa -C "email@qq.com" -b 4096

macOS:
pbcopy < ~/.ssh/id_rsa.pub

GNU/Linux (requires the xclip package):
xclip -sel clip < ~/.ssh/id_rsa.pub

```

