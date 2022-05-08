# Java & AsciiDoc DevContainer

## 概要

このリポジトリは、Visual Studio CodeのRemote Containerで使用する開発コンテナ設定をまとめたものです。

このリポジトリ内の設定ディレクトリにシンボリックリンクを設定するシェルスクリプトを同梱しています。

## ディレクトリ・ファイル構成

    ProjectRoot/
    ├ devcontainer/
    ｜ ├ fonts/
    ｜ ｜ ├ font-license.adoc
    ｜ ｜ └ *.ttf
    ｜ ├ devcontainer.json
    ｜ └ Dockerfile
    ├ README.md
    └ setup.sh

|ディレクトリ・ファイル|説明|
|:-|:-|
|devcontainer/|開発コンテナの設定ディレクトリ|
|devcontainer/fonts/|同梱したフォントを格納しているディレクトリ|
|devcontainer/fonts/font-license.adoc|同梱したフォントのライセンスファイル|
|devcontainer/fonts/*.ttf|フォントの実体ファイル|
|devcontainer/devcontainer.json|開発コンテナの設定ファイル|
|devcontainer/Dockerfile|設定ファイルが参照しているDockerコンテナ構成|
|README.md|このファイル|
|setup.sh|設定ディレクトリにシンボリックリンクを作成するシェルスクリプト|

## 開発コンテナの内容

### 拡張機能

### Mavenローカルリポジトリ
Mavenのローカルリポジトリはホスト側のユーザーフォルダ内の `.m2` をマウントして共有するように設定しています。

不要な場合は、該当のマウント設定をコメントアウトしてください。

### PowerLine
開発コンテナ内に [powerline-go](https://github.com/justjanne/powerline-go) をインストールし、コンソールの表示をリッチにできます。

VSCodeのコンソールのフォントを [Cascadia Code PL](https://docs.microsoft.com/ja-jp/windows/terminal/cascadia-code) などのPowerline対応のものにする必要があります。

### dotfiles
`.bashrc` などのいわゆる dotfiles をGitHubなどの公開リポジトリから取得するように設定されています。

必要に応じて、公開リポジトリとインストールスクリプトを [keikondoh/dotfiles](https://github.com/keikondoh/dotfiles) から変更してください。

### フォント
最低限のフォントとして、[源真ゴシック](http://jikasei.me/font/genshin/) の等幅フォントを同梱しています。

asciidoctor-diagramなどで、画像生成時に日本語フォントが必要な場合にご利用ください。

フォント名は以下です。
- Gen Shin Gothic Monospace Regular
- Gen Shin Gothic Monospace Bold

## 使い方
このリポジトリをフォークしてクローンしてください。

必要に応じて内容を書き換え、各プロジェクトのルートに `devcontainer` をコピーするか、シンボリックリンクを作成します。
## setup.sh

    setup.sh [target-dir]

引数 `target-dir` の直下に `.devcontainer` というシンボリックリンクを作成します。

リンクはこのリポジトリの設定フォルダを参照する。

[ghq](https://github.com/x-motemen/ghq) と [peco](https://github.com/peco/peco) が利用可能な環境であれば、[ghq](https://github.com/x-motemen/ghq) が管理しているフォルダを [peco](https://github.com/peco/peco) で出力し、選択したフォルダの直下にシンボリックリンクを作成します。

この場合、引数 `target-dir` はフォルダの絞り込みに使用します。

