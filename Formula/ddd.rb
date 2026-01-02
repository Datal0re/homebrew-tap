class Ddd < Formula
  desc "CLI tool to process and explore exported ChatGPT conversation data"
  homepage "https://github.com/Datal0re/ddd"
  url "https://registry.npmjs.org/@datal0re/ddd/-/ddd-0.1.6.tgz"
  sha256 "978a730a72cf188f15794a7bd4158013f0d38ada608d928bce067dee8d8a43b2"
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
