class Pgart < Formula
  desc "Zero AI pseudo-random image generator written in Go"
  homepage "https://codeberg.org/Datal0re/pgart.git"
  license "MIT"

  if OS.mac?
    url "https://codeberg.org/Datal0re/pgart/releases/download/v1.1.0/pgart-darwin-all-v1.1.0.tar.gz"
    sha256 "5874050a1b8b7a3920f88353c5eb5b6b39f70f56e063b94195ac3e9c5273350d"
    def install
      bin.install "pgart"
    end
  end

  # --- Linux x86_64 (AMD64) ---
  if OS.linux? && Hardware::CPU.intel?
    url "https://codeberg.org/Datal0re/pgart/releases/download/v1.1.0/pgart-linux-amd64-v1.1.0.tar.gz"
    sha256 "f0cf125022aea9bf4b2dfa6c3773c49a57743776e3c8f8b5e85eb83e5ce41529"

    def install
      bin.install "pgart"
    end
  end

  # --- Linux arm64 ---
  if OS.linux? && Hardware::CPU.arm?
    url "https://codeberg.org/Datal0re/pgart/releases/download/v1.1.0/pgart-linux-arm64-v1.1.0.tar.gz"
    sha256 "b7c6a90095e4850953077044b1bc559aaf97d85a9ed4d2de64b3054352642f8d"

    def install
      bin.install "pgart"
    end
  end

  test do
    system "#{bin}pgart", "--version"
  end
end
