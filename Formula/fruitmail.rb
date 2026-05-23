require "language/node"

class Fruitmail < Formula
  include Language::Node

  desc "Fast Apple Mail search CLI with body content support"
  homepage "https://github.com/gumadeiras/fruitmail-cli"
  url "https://github.com/gumadeiras/fruitmail-cli/releases/download/v1.1.4/fruitmail-1.1.4.tgz"
  sha256 "7622e5c4a89415981dbafe194d06c5c2220e732a24a157f7128a794b11e28251"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink libexec/"bin/fruitmail"
  end

  test do
    assert_match "Fast Apple Mail search via SQLite", shell_output("#{bin}/fruitmail --help")
  end
end
