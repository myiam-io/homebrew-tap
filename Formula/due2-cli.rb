class Due2Cli < Formula
  desc "CLI tool for managing due items with end-to-end encryption"
  homepage "https://github.com/my-due2/due2-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-macos-arm64.tar.gz"
      sha256 "ef0b3883bcb3d7ab8472b04d94a2a470ee5ad5756a25682295a2bc601f1069f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-cli-v#{version}/due2-cli-#{version}-linux-x64.tar.gz"
      sha256 "8fecdff79418ae4ba9090c0e9ed6591c62d6ba24bb2b3428fafe9012ab9c3e28"
    end
  end

  def install
    bin.install "due2-cli"
  end

  test do
    assert_match "due2-cli", shell_output("#{bin}/due2-cli --help")
  end
end
