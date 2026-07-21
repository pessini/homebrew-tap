class Litedrop < Formula
  desc "Share markdown and HTML files through links"
  homepage "https://github.com/pessini/litedrop"
  url "https://registry.npmjs.org/@litedrop/cli/-/cli-0.2.1.tgz"
  sha256 "3d07d85041517369f95c72ce5ba43f65285d037feaccc581dde230ccb27aa71a"
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
