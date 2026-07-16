class Litedrop < Formula
  desc "Share markdown and HTML files through links"
  homepage "https://github.com/pessini/litedrop"
  url "https://registry.npmjs.org/@litedrop/cli/-/cli-0.2.0.tgz"
  sha256 "c8bf534a5a0405be8456ae241aece5e5b0f1e1cbfccbdc5c4f076d4a4d75596a"
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
