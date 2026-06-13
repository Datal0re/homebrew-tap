class Pgart < Formula
  desc "Zero AI pseudo-random image generator written in Go"
  homepage "https://codeberg.org/Datal0re/pgart.git"
  license "MIT"

  if OS.mac?
    url "https://codeberg.org/Datal0re/pgart/releases/download/v1.0.0/pgart-darwin-all-v1.0.0.tar.gz"
    sha256 "cc1cec81487936cef3f0fdbafff90348c12d33810b776269f8349b61afada13b"
    def install
      bin.install bin/pgart
    end
  end

  # --- Linux x86_64 (AMD64) ---
  if OS.linux? && Hardware::CPU.intel?
    url "https://codeberg.org/Datal0re/pgart/releases/download/v1.0.0/pgart-linux-amd64-v1.0.0.tar.gz"
    sha256 "f276cdea34286b4604454d5895ed99fedba26b8b80e29903a9abc532fe65776f"

    def install
      bin.install bin/pgart
    end
  end

  # --- Linux arm64 ---
  if OS.linux? && Hardware::CPU.arm?
    url "https://codeberg.org/Datal0re/pgart/releases/download/v1.0.0/pgart-linux-arm64-v1.0.0.tar.gz"
    sha256 "27049e5e8e72016ab3d51147aa9a40ed7a85d454880fd4d10d8a7561f2f50316"

    def install
      bin.install bin/pgart
    end
  end

  test do
    system "#{bin}pgart", "--version"
  end
end
