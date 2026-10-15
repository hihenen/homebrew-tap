class Knock < Formula
  desc "Desktop approval / annotation / question gate for AI coding agents"
  homepage "https://github.com/hihenen/knock"
  url "https://github.com/hihenen/knock/releases/download/v0.7.6/knock-macos-aarch64"
  version "0.7.6"
  sha256 "9ac6f4e342c9042f53f05c9705b9cf58f3293ba02329a1aa6d300bfb2bd4dee2"
  license "MIT"

  # Apple Silicon only (the released binary is arm64).
  depends_on arch: :arm64

  def install
    bin.install "knock-macos-aarch64" => "knock"
  end

  test do
    assert_match "knock", shell_output("#{bin}/knock --version")
  end
end
