require "language/node"

class Fruitmail < Formula
  include Language::Node

  desc "Fast Apple Mail search CLI with body content support"
  homepage "https://github.com/gumadeiras/fruitmail-cli"
  url "https://github.com/gumadeiras/fruitmail-cli/releases/download/v1.2.2/fruitmail-1.2.2.tgz"
  sha256 "ba28e0681423ea17c548761dc9d36f0aa35714ba9132679d51d67ee7230a033f"
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
