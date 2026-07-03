cask "due2" do
  version "2.6.2"
  sha256 "3fc1234df0dbb4c0631f26dfe724a8ef1e64161bae8b976a79eb17449fc72339"

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
