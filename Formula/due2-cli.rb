class Due2Cli < Formula
  desc "CLI tool for managing due items with end-to-end encryption"
  homepage "https://github.com/my-due2/due2-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-macos-arm64.tar.gz"
      sha256 "f4f26b492a63c30e225ffc1f78e8f608a9d460ed6f49ee690af85deda90d70ed"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-linux-x64.tar.gz"
      sha256 "41893d5cf30703be23c11b2d415a3c946d26fbb95e93b57dc7705d5ec07e61c5"
    end
  end

  def install
    bin.install "due2-cli"
  end

  test do
    assert_match "due2-cli", shell_output("#{bin}/due2-cli --help")
  end
end
