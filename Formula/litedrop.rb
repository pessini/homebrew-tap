class Litedrop < Formula
  desc "Share markdown and HTML files through links"
  homepage "https://github.com/pessini/litedrop"
  url "https://registry.npmjs.org/@litedrop/cli/-/cli-0.2.2.tgz"
  sha256 "658b839572c2faa709f5e2130c1a0c15a06686c2a78d205c148078aa5242b94c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/litedrop"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/litedrop --help")
  end
end
