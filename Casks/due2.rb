cask "due2" do
  version "2.7.0"
  sha256 "f0f8ffaed69a3f1a31ceebfa6c9d1ec620768cff64c19c7f0dba9f565abf2fa9"

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
