class HexCli < Formula
  desc "On-device audio transcription CLI (WhisperKit + Parakeet)"
  homepage "https://github.com/fbehrens/HexCLI"
  url "https://github.com/fbehrens/HexCLI/releases/download/v0.2.1/hex-cli-v0.2.1-arm64-apple-macosx.tar.gz"
  sha256 "887ce5b1864805b242273a431fdc0146239034dce93cf6bce68efb93b8c975be"
  version "0.2.1"
  license "MIT"

  depends_on :macos
  depends_on macos: :sequoia

  def install
    bin.install "hex-cli"
    fish_completion.install "completions/hex-cli.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hex-cli --version").strip
  end
end
