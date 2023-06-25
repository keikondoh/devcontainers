# AsciiDoc DevContainer

## 概要

このリポジトリは、Dev Containerで使用する開発コンテナ設定をまとめたものです。

このリポジトリ内の設定ディレクトリにシンボリックリンクを設定するシェルスクリプトを同梱しています。

## ディレクトリ・ファイル構成

    ProjectRoot/
    ├ devcontainer/
    ｜ ├ devcontainer.json
    ｜ └ Dockerfile
    ├ README.md
    └ setup.sh

|ディレクトリ・ファイル|説明|
|:-|:-|
|devcontainer/|開発コンテナの設定ディレクトリ|
|devcontainer/devcontainer.json|開発コンテナの設定ファイル|
|devcontainer/Dockerfile|設定ファイルが参照しているDockerコンテナ構成|
|README.md|このファイル|
|setup.sh|設定ディレクトリにシンボリックリンクを作成するシェルスクリプト|

## 開発コンテナの内容

## 使い方
このリポジトリをフォークしてクローンしてください。

必要に応じて内容を書き換え、各プロジェクトのルートに `devcontainer` をコピーするか、シンボリックリンクを作成します。
## setup.sh

    setup.sh [target-dir]

引数 `target-dir` の直下に `.devcontainer` というシンボリックリンクを作成します。

リンクはこのリポジトリの設定フォルダを参照する。

[ghq](https://github.com/x-motemen/ghq),[fzf](https://github.com/junegunn/fzf),[bat](https://github.com/sharkdp/bat)が利用可能な環境であれば、[ghq](https://github.com/x-motemen/ghq) が管理しているフォルダを [fzf](https://github.com/junegunn/fzf) で出力し、選択したフォルダの直下にシンボリックリンクを作成します。

この場合、引数 `target-dir` はフォルダの絞り込みに使用します。

