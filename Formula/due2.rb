class Due2 < Formula
  desc "CLI tool for managing due items with end-to-end encryption"
  homepage "https://github.com/my-due2/due2-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-v#{version}/due2-#{version}-macos-arm64.tar.gz"
      sha256 "2a3b220e43de6da6d6127d90f79dddbc31649cd0d53dd6f303ba4e7b474f49d3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/myiam-io/homebrew-tap/releases/download/due2-v#{version}/due2-#{version}-linux-x64.tar.gz"
      sha256 "fcde029a15c70df5bafddb3920b45989cabad50c99ee79b2ffcfa629aa3376b9"
    end
  end

  def install
    bin.install "due2"
  end

  test do
    assert_match "due2", shell_output("#{bin}/due2 --help")
  end
end
