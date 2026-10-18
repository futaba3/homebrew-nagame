# homebrew-nagame

[Nagame（ながめ）](https://github.com/futaba3/nagame) の Homebrew tap です。

Nagame は、20分ごとに現在地の天気に連動した自然の景色と精霊を全画面に映し、
20秒だけ遠くをながめるようそっと促す macOS メニューバーアプリです。
20-20-20ルールで眼精疲労をやわらげます。

## インストール

```sh
brew install --cask futaba3/nagame/nagame
```

または tap を追加してから:

```sh
brew tap futaba3/nagame
brew install --cask nagame
```

インストール後は Launchpad か `open -a Nagame` で起動します。
メニューバーに常駐するアプリなので、Dock には表示されません。

## 動作環境

- macOS 15.6 (Sequoia) 以降

## 更新

```sh
brew upgrade --cask nagame
```

アップグレード時は、起動中の Nagame を自動で終了してから入れ替えます。

## アンインストール

```sh
brew uninstall --cask nagame
```

設定（作業時間・ながめ時間・場所の設定など）もまとめて消す場合:

```sh
brew uninstall --zap --cask nagame
```

## 注意

- App Store 版を入れている場合は、先にそちらを削除してからインストールしてください
  （または `brew install --cask --force futaba3/nagame/nagame`）。
- 天気連動のため、初回起動時に位置情報の利用を確認します。許可しない場合は、
  設定画面から場所を手動で指定できます。

## このリポジトリについて

`Casks/nagame.rb` は、[futaba3/nagame](https://github.com/futaba3/nagame) のリリース
ワークフローが新しいバージョンを公開するたびに自動で更新します（バージョンと sha256 の書き換え）。
手で編集する場合は、本体リポジトリの `packaging/homebrew/Casks/nagame.rb`（テンプレート）も
あわせて直してください。

不具合や要望は [futaba3/nagame の Issues](https://github.com/futaba3/nagame/issues) へお願いします。
