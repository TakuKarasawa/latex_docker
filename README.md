# latex_docker
`Docker`+`VS Code Dev Container`を利用して、日本語対応`LaTeX（upLaTeX + dvipdfmx`環境を作成

## 1. Environment
### 1.1 Host
- macOS (Apple Silicon)  
- Docker Desktop for Mac (Apple Silicon 対応版)
- Visual Studio Code

### 1.2 VS Code Extensions
- Dev Containers (`ms-vscode-remote.remote-containers`)
- LaTeX Workshop (`James-Yu.latex-workshop`)


### 1.3 Docker Image / LaTeX
- Docker image: `ghcr.io/paperist/texlive-ja:latest`
  - TeX Live + 日本語フォント + 各種ツール込み
- LaTeX engine:
  - upLaTeX + dvipdfmx
- Build tool:
  - `latexmk`（`latexmkrc` で upLaTeX 用に設定）

## 2. Install and Build
### 2.1 Install
- Docker Desktop
    - Docker 公式サイトから macOS (Apple silicon) 向けをインストール
    
- Visual Studio Code
    - VS Code 公式サイトからインストール。

- VS Code Extensions
    - Dev Containers   
    - LaTeX Workshop

- Docker Image / LaTex
    - Docker image：`ghcr.io/paperist/texlive-ja:latest`
    - TeX Live + 日本語フォント + 各種ツール込み
    - LaTeX engine：
    - upLaTeX + dvipdfmx
    - Build tool：
        - `latexmk`（`latexmkrc` で upLaTeX 用に設定）

### 2.2 Build
- リポジトリを取得
```
git clone git@github.com:TakuKarasawa/latex_docker.git
cd latex_docker
```
- VS Code で Dev Container を起動
1. VS Code でこのフォルダを開く（File > Open Folder...）
2. 右下または画面上部に
「Reopen in Container」 といったメッセージが出たらクリック.  
出ない場合は、コマンドパレット（Cmd + Shift + P）で
Dev Containers: Reopen in Container を実行
3. 初回は以下が自動で行われる:
    -  `ghcr.io/paperist/texlive-ja:latest`イメージのダウンロード
    - コンテナ起動
    - コンテナ内に VS Code サーバーをセットアップ
    - LaTeX Workshop のインストール

左下のステータスバーに
> Dev Container: ...
と表示されていれば、コンテナ内の環境に接続済み

## 3. How to use
main.texを開き、保存すれば自動でlatexmkを実行しPDFが生成