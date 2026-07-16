class MyiamCli < Formula
  desc "CLI for MyIAM Administration"
  homepage "https://myiam.io"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-macos-arm64.tar.gz"
      sha256 "2858a40b829cc1d3abb75b5f460a1ed1b824d908fc9ec59279ab4a5d24eeadee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-linux-x64.tar.gz"
      sha256 "1b3a11fd194ff25f8af3a430bfbb485066330c5958864ad79bf55c2224f726bd"
    end
  end

  def install
    bin.install "myiam-cli"
  end

  test do
    assert_match "myiam-cli", shell_output("#{bin}/myiam-cli --help")
  end
end
