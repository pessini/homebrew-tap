class Litedrop < Formula
  desc "Share markdown and HTML files through links"
  homepage "https://github.com/pessini/litedrop"
  url "https://registry.npmjs.org/@litedrop/cli/-/cli-0.1.3.tgz"
  sha256 "39201f0c88885cc6ab116322fd5485bb4dc660d8d989db16e11f77db795d0a3b"
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
