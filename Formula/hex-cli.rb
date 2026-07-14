class HexCli < Formula
  desc "On-device audio transcription CLI (WhisperKit + Parakeet)"
  homepage "https://github.com/fbehrens/HexCLI"
  url "https://github.com/fbehrens/HexCLI/releases/download/v0.2.0/hex-cli-v0.2.0-arm64-apple-macosx.tar.gz"
  sha256 "e4f0d5b6ab284169e2b45674cc5c46b4e23db51408fff8d96457900b21eece66"
  version "0.2.0"
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
