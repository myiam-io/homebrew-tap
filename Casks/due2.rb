cask "due2" do
  version "1.9.0"
  sha256 "d7d1f59d77ca6999a46e8bf62f59562e4dc75ca2a22dbdb22946cc78fcbd4b21"

  url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-v#{version}/due2-#{version}.dmg"
  name "Due2"
  desc "일정 마감 알림 앱"
  homepage "https://github.com/my-due2/due2-flutter"

  depends_on macos: ">= :monterey"

  app "due2.app"

  zap trash: [
    "~/Library/Application Support/io.myiam.due2",
    "~/Library/Preferences/io.myiam.due2.plist",
    "~/Library/Caches/io.myiam.due2",
  ]
end
