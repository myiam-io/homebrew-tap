class MyiamCli < Formula
  desc "CLI for MyIAM Administration"
  homepage "https://myiam.io"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-macos-arm64.tar.gz"
      sha256 "b4c231e5726403d3bc56a6e795726ea94abb2feb0e125bb5652fe8352fab2b37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/myiam-cli-v#{version}/myiam-cli-#{version}-linux-x64.tar.gz"
      sha256 "e1a9bbcf6e061ff7e0c482336dcb3327e8eed7cd76312e5eea76c0f981b90c1e"
    end
  end

  def install
    bin.install "myiam-cli"
  end

  test do
    assert_match "myiam-cli", shell_output("#{bin}/myiam-cli --help")
  end
end
