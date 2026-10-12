class Knock < Formula
  desc "Desktop approval / annotation / question gate for AI coding agents"
  homepage "https://github.com/hihenen/knock"
  url "https://github.com/hihenen/knock/releases/download/v0.7.1/knock-macos-aarch64"
  version "0.7.1"
  sha256 "525fd1f96c799c85b316ef6e0e4a6155f32077f55644441c9bbca6b8907ca261"
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
