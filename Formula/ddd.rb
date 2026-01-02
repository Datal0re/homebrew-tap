class Ddd < Formula
  desc "CLI tool to process and explore exported ChatGPT conversation data"
  homepage "https://github.com/Datal0re/ddd"
  url "https://registry.npmjs.org/@datal0re/ddd/-/ddd-0.1.0.tgz"
  sha256 "1210af95a5ea6b84733afccb57d39a953551636b99bc5ff53bb1b744c2a16e61"
  license "MIT"
  head "https://github.com/Datal0re/ddd.git", branch: "main"
  depends_on "node"
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*") => "ddd"
  end
  test do
    system "#{bin}/ddd", "--version"
  end
end
