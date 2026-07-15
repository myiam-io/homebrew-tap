cask "due2" do
  version "2.7.1"
  sha256 "c95050c8b2e1491d1f16c921a7d01f426c80db2f0162f38212ddefe1d39fa467"

  url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-v#{version}/due2-#{version}.dmg"
  name "Due2"
  desc "일정 마감 알림 앱"
  homepage "https://due2.app"

  depends_on macos: :monterey

  app "due2.app"

  zap trash: [
    "~/Library/Application Support/io.myiam.due2",
    "~/Library/Preferences/io.myiam.due2.plist",
    "~/Library/Caches/io.myiam.due2",
  ]
end
