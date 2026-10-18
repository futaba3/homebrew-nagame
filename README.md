# homebrew-nagame

[Nagame（ながめ）](https://apps.apple.com/jp/app/nagame/id6775515911?mt=12) の Homebrew tap です。

Nagame は、20分ごとに現在地の天気に連動した自然の景色と精霊を全画面に映し、
20秒だけ遠くをながめるようそっと促す macOS メニューバーアプリです。
20-20-20ルールで眼精疲労をやわらげます。

App Store からもダウンロードできます:
https://apps.apple.com/jp/app/nagame/id6775515911?mt=12

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
