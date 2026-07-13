class Due2Cli < Formula
  desc "CLI tool for managing due items with end-to-end encryption"
  homepage "https://github.com/my-due2/due2-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-macos-arm64.tar.gz"
      sha256 "c1d7f3e63468a3817b36ef1d5b92603894abd4d2a88cec69d63c29226d625fa3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-linux-x64.tar.gz"
      sha256 "cc797c6d65ae5f3ede68fd368e97e32b86fd425c26c0a0c1285f7d7c20578058"
    end
  end

  def install
    bin.install "due2-cli"
  end

  test do
    assert_match "due2-cli", shell_output("#{bin}/due2-cli --help")
  end
end
