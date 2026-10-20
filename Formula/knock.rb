class Knock < Formula
  desc "Desktop approval / annotation / question gate for AI coding agents"
  homepage "https://github.com/hihenen/knock"
  url "https://github.com/hihenen/knock/releases/download/v0.8.2/knock-macos-aarch64"
  version "0.8.2"
  sha256 "2c42785c328bea499ab736eb3b3be7b3b6dfcd19a3dda7e51105f36ba0324c8f"
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
