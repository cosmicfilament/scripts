
# git commands
git config --global user.name cosmicfilament
git config --user.email john@thecosmicfilament.com
git config --user.email "john@thecosmicfilament.com"
git config --global user.email "john@thecosmicfilament.com"
git config --global --edit
git config --global --list

git init
git add .
git commit -m"initial commit"
git remote add origin $1
git push -u origin master

# git - mac credential helper
git config --global credential.helper osxkeychain
# git - windows credential helper
git config --global credential.helper wincred