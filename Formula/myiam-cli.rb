class MyiamCli < Formula
  desc "CLI for MyIAM Administration"
  homepage "https://myiam.io"
  version "0.7.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-macos-arm64.tar.gz"
      sha256 "50e4037283602499a69178119d667204c0bbd50086e698db9978ca0425fe19b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-linux-x64.tar.gz"
      sha256 "d1cfc166ae9057a8cbe0998a59b637d1c87cac48255353d8806a6381fd073ebe"
    end
  end

  def install
    bin.install "myiam-cli"
  end

  test do
    assert_match "myiam-cli", shell_output("#{bin}/myiam-cli --help")
  end
end
