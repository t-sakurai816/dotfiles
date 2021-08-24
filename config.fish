switch (uname -m)
case arm64
    echo Hi arm user\!
    # brew
    set -x PATH /opt/homebrew/bin $PATH
    # mysql
    set -x PATH /opt/homebrew/opt/mysql@5.7/bin $PATH
case x86_64
    echo Hi intel!
case '*'
    echo Who are you\?\?
end

# Flutter
#set -x PATH $HOME/develop/flutter/bin $PATH
set -x PATH $HOME/fvm/default/bin $PATH
# riverpod
set -x PATH $HOME/.pub-cache/bin $PATH

# nodenv
status --is-interactive; and source (nodenv init -|psub)
## fiser ##
# 時計を非表示
set -g theme_display_date no
# コマンド実行時間を非表示
set -g theme_display_cmd_duration no
##########

##### ここから自動化スクリプト #####

# GitHub CLIでリポジトリを作成して、VScodeで開く
function ghcr
 cd ~/GitHub
 gh repo create $argv #リモートリポジトリ作成
 cd $argv[1] #ディレクトリ移動
 echo "# $argv[1]" >> README.md
 git init
 git add README.md
 git commit -m "first commit"
 git branch -M main
 git remote add origin git@github.com:t-sakurai816/$argv[1].git
 git push -u origin main
 echo ".DS_Store" > .gitignore
 echo ".env" >> .gitignore
 code ~/GitHub/$argv[1] #VScodeを開く
end

# playgroudリポジトリにディレクトリを作成して、VScodeで開く
function pg
 cd ~/GitHub/playground
 mkdir -p ~/GitHub/playground/$argv[1]/
 echo "# $argv[1]" >> ~/GitHub/playground/$argv[1]/README.md
 echo ".DS_Store" > ~/GitHub/playground/$argv[1]/.gitignore
 echo ".env" >> ~/GitHub/playground/$argv[1]/.gitignore
 code ~/GitHub/playground/$argv[1]
end

# Flutter create してGitHubCLIでリポジトリ作成してVScodeで開く
function flgh
 cd ~/GitHub
 flutter create --org com.sakurai-dev $argv[1]
 cd $argv[1]
 gh repo create $argv #リモートリポジトリ作成
 echo "# $argv[1]" >> README.md
 git init
 git add README.md
 git commit -m "first commit"
 git branch -M main
 git remote add origin git@github.com:t-sakurai816/$argv[1].git
 git push -u origin main
 code ~/GitHub/$argv[1] #VScodeを開く
end
