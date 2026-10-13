# Mr1 サーバー用 MODパック

PrismLauncher で、ゲーム起動のたびにサーバーと同じMOD構成へ自動で更新されます。
最初に一度だけ下の設定をすれば、あとは何もしなくて大丈夫です。

- Minecraft 1.21.1 / NeoForge 21.1.259
- パックのURL: `https://raw.githubusercontent.com/charlottenoelrr-oss/Server-mods1/main/pack.toml`

## はじめの設定(1回だけ)

### 1. インスタンスを新しく作る

既存のインスタンスに入っているMODと混ざるので、**新しいインスタンス**を作ってください。

1. Prism の「インスタンスを追加」→ バニラ → バージョン **1.21.1** を選んで作成
2. 作ったインスタンスを右クリック →「編集」→「バージョン」→ 右側の「NeoForgeをインストール」→ **21.1.259** を選ぶ
3. 同じ編集画面の「設定」→「Java」で、メモリの最大を **6GB〜8GB** くらいにする(「メモリ」にチェックを入れてから変更)

### 2. packwiz-installer-bootstrap.jar を置く

1. 次のページから `packwiz-installer-bootstrap.jar` をダウンロード
   https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest
2. インスタンスを右クリック →「フォルダーを開く」→ 開いた中の **`minecraft`** フォルダ(または `.minecraft`)に入れる

### 3. 起動前コマンドを設定する

1. インスタンスを右クリック →「編集」→「設定」→「カスタムコマンド」タブ
2. 「カスタムコマンド」にチェックを入れる
3. 「起動前コマンド」に、次の1行をそのまま貼り付ける

```
"$INST_JAVA" -jar packwiz-installer-bootstrap.jar https://raw.githubusercontent.com/charlottenoelrr-oss/Server-mods1/main/pack.toml
```

### 4. 起動する

最初の起動では、更新の画面が出てMODがまとめてダウンロードされます(数分かかります)。
終わるとそのままゲームが起動します。

## 2回目以降

普通に起動するだけです。MODの追加・削除・更新があれば、起動前に自動で反映されます。

## うまくいかないとき

- **更新の画面でエラーが出る**: 更新直後は数分間古い内容が返ることがあります。少し待ってからもう一度起動してください
- **起動前コマンドのところで止まる**: `packwiz-installer-bootstrap.jar` を置いた場所が `minecraft`(または `.minecraft`)フォルダの中か確認してください
- **自分で入れたMOD**: パックに無いMODを自分で `mods` に入れても消されません。ただしサーバーと合わないMODを入れると接続できないことがあります
- **設定(グラフィックなど)**: 自分で変えた設定は基本的に上書きされません(パックで配っている一部の設定ファイルを除く)
