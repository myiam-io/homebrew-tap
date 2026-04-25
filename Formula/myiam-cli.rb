class MyiamCli < Formula
  desc "CLI for MyIAM Administration"
  homepage "https://myiam.io"
  version "0.0.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "myiam-cli"
  end

  test do
    assert_match "myiam-cli", shell_output("#{bin}/myiam-cli --help")
  end
end
