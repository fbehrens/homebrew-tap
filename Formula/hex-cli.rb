class HexCli < Formula
  desc "On-device audio transcription CLI (WhisperKit + Parakeet)"
  homepage "https://github.com/fbehrens/HexCLI"
  url "https://github.com/fbehrens/HexCLI/releases/download/v0.1.0/hex-cli-v0.1.0-arm64-apple-macosx.tar.gz"
  sha256 "PLACEHOLDER"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on macos: :sequoia

  def install
    bin.install "hex-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hex-cli --version").strip
  end
end
