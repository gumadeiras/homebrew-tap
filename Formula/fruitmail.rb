require "language/node"

class Fruitmail < Formula
  include Language::Node

  desc "Fast Apple Mail search CLI with body content support"
  homepage "https://github.com/gumadeiras/fruitmail-cli"
  url "https://github.com/gumadeiras/fruitmail-cli/releases/download/v1.1.2/apple-mail-search-cli-1.1.2.tgz"
  sha256 "8e50b0059bc5f646e2dfd2a08b3be40f6e2feba1e82a4cbef6676b30ba0ebc6d"
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
