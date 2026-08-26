class Knock < Formula
  desc "Desktop approval / annotation / question gate for AI coding agents"
  homepage "https://github.com/hihenen/knock"
  url "https://github.com/hihenen/knock/releases/download/v0.6.5/knock-macos-aarch64"
  version "0.6.5"
  sha256 "93e4ad41f63602e05f333450d3fae4d874e1ee0ab03de63d62beb7e80bfb2e0f"
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
