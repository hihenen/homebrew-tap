class Knock < Formula
  desc "Desktop approval / annotation / question gate for AI coding agents"
  homepage "https://github.com/hihenen/knock"
  url "https://github.com/hihenen/knock/releases/download/v0.1.1/knock-macos-aarch64"
  version "0.1.1"
  sha256 "1953ae0066967718ca78f0618fcf77c3002fba802a7daa1d6b22e6a7787b824b"
  license "MIT"

  # Apple Silicon only (the released binary is arm64).
  depends_on arch: :arm64

  def install
    bin.install "knock-macos-aarch64" => "knock"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/knock --version")
  end
end
