class Knock < Formula
  desc "Desktop approval / annotation / question gate for AI coding agents"
  homepage "https://github.com/hihenen/knock"
  url "https://github.com/hihenen/knock/releases/download/v0.4.6/knock-macos-aarch64"
  version "0.4.6"
  sha256 "50e9e92e149ddc5fce6bc4363b6a7dedcb7eb710e602f294c9d553b2ecd07ce5"
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
