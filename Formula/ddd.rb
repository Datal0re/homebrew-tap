class Ddd < Formula
  desc "CLI tool to process and explore exported ChatGPT conversation data"
  homepage "https://github.com/Datal0re/ddd"
  url "https://registry.npmjs.org/@datal0re/ddd/-/ddd-0.1.7.tgz"
  sha256 "cac78d7f41e3d4f349d85cae016ac7264243afe656d7454fc37be2024b4bcba3"
  license "MIT"
  head "https://github.com/Datal0re/ddd.git", branch: "main"
  depends_on "node"
  def install
    system "npm", "install", *std_npm_args
    bin.install libexec.glob("bin/*")
  end
  test do
    system "#{bin}/ddd", "--version"
  end
end
