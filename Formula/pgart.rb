class Pgart < Formula
  desc "Zero AI pseudo-random image generator written in Go"
  homepage "https://codeberg.org/Datal0re/pgart.git"
  url "https://codeberg.org/Datal0re/pgart/releases/download/v1.0.0/pgart-darwin-all-v1.0.0.tar.gz"
  sha256 "cc1cec81487936cef3f0fdbafff90348c12d33810b776269f8349b61afada13b"
  license "MIT"
  def install
    bin.install bin/pgart
  end
  test do
    system "#{bin}pgart", "--version"
  end
end
