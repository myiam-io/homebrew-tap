cask "due2" do
  version "2.0.0"
  sha256 "8f2836c9741ca4b3d39707d5858e0a28d4689b60d2760b51ff2a49e27991fb6b"

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
