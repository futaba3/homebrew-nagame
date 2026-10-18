cask "nagame" do
  version "1.0.0"
  sha256 "026e27c9d96229ef8ac1f5d47673a0cbd69d07c4c6de5e40de7742d44cbfe9b5"

  url "https://github.com/futaba3/nagame/releases/download/v#{version}/Nagame-#{version}.dmg"
  name "Nagame"
  name "ながめ"
  desc "Menu bar app that reminds you to look into the distance every 20 minutes"
  homepage "https://github.com/futaba3/nagame"

  livecheck do
    url :url
    strategy :github_latest
  end

  # 最小動作環境は Xcode プロジェクトの MACOSX_DEPLOYMENT_TARGET (15.6) に合わせる
  depends_on macos: ">= :sequoia"

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
