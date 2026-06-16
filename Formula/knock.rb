class Knock < Formula
  desc "Desktop approval / annotation / question gate for AI coding agents"
  homepage "https://github.com/hihenen/knock"
  url "https://github.com/hihenen/knock/releases/download/v0.1.2/knock-macos-aarch64"
  version "0.1.2"
  sha256 "5ab64f55d270eb0e426942c05a72bb52627bc6820e998f0ee77b21413295ab86"
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
