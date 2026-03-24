class HexCli < Formula
  desc "On-device audio transcription CLI (WhisperKit + Parakeet)"
  homepage "https://github.com/fbehrens/HexCLI"
  url "https://github.com/fbehrens/HexCLI/releases/download/v0.1.1/hex-cli-v0.1.1-arm64-apple-macosx.tar.gz"
  sha256 "202ca5af07c4108b0e6b1b7d9c3856ba48bb8bd2b10e2de44133e39d626a5d2c"
  version "0.1.1"
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
