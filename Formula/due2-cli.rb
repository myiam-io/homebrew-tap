class Due2Cli < Formula
  desc "CLI tool for managing due items with end-to-end encryption"
  homepage "https://github.com/my-due2/due2-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-macos-arm64.tar.gz"
      sha256 "3b286806e6723f691c94176303371e4c26dcca89b016e72803bf14294499f787"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-linux-x64.tar.gz"
      sha256 "0164ce0d5ffe46da30743379005c97031fd29113d5bf9540c92ce12f4373944e"
    end
  end

  def install
    bin.install "due2-cli"
  end

  test do
    assert_match "due2-cli", shell_output("#{bin}/due2-cli --help")
  end
end
