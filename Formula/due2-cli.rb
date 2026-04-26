class Due2Cli < Formula
  desc "CLI tool for managing due items with end-to-end encryption"
  homepage "https://github.com/my-due2/due2-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-macos-arm64.tar.gz"
      sha256 "b2c9be93a1e19a2361bee5687df1b3acb1d2822745da07ae96ef3faeb7253326"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-linux-x64.tar.gz"
      sha256 "49a1b3ad23db897c05931d722b7ae5befaf7159795ca5b2466ca30c77a56f61d"
    end
  end

  def install
    bin.install "due2-cli"
  end

  test do
    assert_match "due2-cli", shell_output("#{bin}/due2-cli --help")
  end
end
