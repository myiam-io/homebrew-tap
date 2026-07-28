class MyiamCli < Formula
  desc "CLI for MyIAM Administration"
  homepage "https://myiam.io"
  version "0.6.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-macos-arm64.tar.gz"
      sha256 "84b6cf6216e38c5ec54aede1c3c0f4c191d0e36c79a803f9c61643b9f8ac5200"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-linux-x64.tar.gz"
      sha256 "9af2a8f8061de8bae0d7e146fcafb04dc313b6b964e3a9e9a3e73a2d7fa7bbcc"
    end
  end

  def install
    bin.install "myiam-cli"
  end

  test do
    assert_match "myiam-cli", shell_output("#{bin}/myiam-cli --help")
  end
end
