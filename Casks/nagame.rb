cask "nagame" do
  version "1.2.0"
  sha256 "fd11a67cca8d2fbf23f59d735a21aa6e941ce577dd3ae099119cf59d1739204f"

  # dmg は tap リポジトリ（futaba3/homebrew-nagame）の Release に置く
  url "https://github.com/futaba3/homebrew-nagame/releases/download/v#{version}/Nagame-#{version}.dmg"
  name "Nagame"
  name "ながめ"
  desc "Menu bar app that reminds you to look into the distance every 20 minutes"
  homepage "https://apps.apple.com/jp/app/nagame/id6775515911?mt=12"

  livecheck do
    url :url
    strategy :github_latest
  end

  # 最小動作環境は Xcode プロジェクトの MACOSX_DEPLOYMENT_TARGET (15.6) に合わせる
  depends_on macos: :sequoia

  # アプリ内で Sparkle が自分を更新する（docs/design/in-app-update.md）。
  # brew upgrade は（--greedy を付けない限り）Nagame を飛ばし、アプリの更新と食い違わない
  auto_updates true

  app "Nagame.app"

  # メニューバー常駐（LSUIElement）なので、アップグレード/アンインストール前に終了させる
  uninstall quit: "com.kudoayana.Nagame"

  # App Sandbox が有効なため、設定はコンテナ配下に保存される
  zap trash: [
    "~/Library/Application Scripts/com.kudoayana.Nagame",
    "~/Library/Caches/com.kudoayana.Nagame",
    "~/Library/Containers/com.kudoayana.Nagame",
    "~/Library/HTTPStorages/com.kudoayana.Nagame",
    "~/Library/Preferences/com.kudoayana.Nagame.plist",
    "~/Library/Saved Application State/com.kudoayana.Nagame.savedState",
  ]
end
