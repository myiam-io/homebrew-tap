cask "due2" do
  version "1.9.1"
  sha256 "6cac0f3cac5486e2516ce29e2cfd68c2c89edbf642b32f68f193df744552c0f3"

  url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-v#{version}/due2-#{version}.dmg"
  name "Due2"
  desc "일정 마감 알림 앱"
  homepage "https://due2.app"

  depends_on macos: ">= :monterey"

  app "due2.app"

  zap trash: [
    "~/Library/Application Support/io.myiam.due2",
    "~/Library/Preferences/io.myiam.due2.plist",
    "~/Library/Caches/io.myiam.due2",
  ]
end
