require "language/node"

class Fruitmail < Formula
  include Language::Node

  desc "Fast Apple Mail search CLI with body content support"
  homepage "https://github.com/gumadeiras/fruitmail-cli"
  url "https://github.com/gumadeiras/fruitmail-cli/releases/download/v1.2.0/fruitmail-1.2.0.tgz"
  sha256 "43d5d68d972d9be9eddfedf8756e792f0aa0aa12af8c539f176835486959a62f"
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
