require "language/node"

class Gotrain < Formula
  include Language::Node

  desc "Atomic CLI for MTA train departures"
  homepage "https://github.com/gumadeiras/gotrain-cli"
  url "https://github.com/gumadeiras/gotrain-cli/releases/download/v1.2.5/gotrain-1.2.5.tgz"
  sha256 "a736278f561e011698a86f03ed4b7b7263b33c2cba2d9f07f53359b2c1245703"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink libexec/"bin/gotrain"
  end

  test do
    assert_match "Atomic CLI for NYC train departures", shell_output("#{bin}/gotrain --help")
  end
end
