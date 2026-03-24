class HexCli < Formula
  desc "On-device audio transcription CLI (WhisperKit + Parakeet)"
  homepage "https://github.com/fbehrens/HexCLI"
  url "https://github.com/fbehrens/HexCLI/releases/download/v0.1.1/hex-cli-v0.1.1-arm64-apple-macosx.tar.gz"
  sha256 "234aa4a455d798201b86cb57ee22051106dc9c231a625b5a70686c62d7fe5cee"
  version "0.1.1"
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
