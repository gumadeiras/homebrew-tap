require "language/node"

class Roku < Formula
  include Language::Node

  desc "CLI and library for controlling Roku devices"
  homepage "https://github.com/gumadeiras/roku-cli"
  url "https://github.com/gumadeiras/roku-cli/releases/download/v1.1.6/gumadeiras-roku-1.1.6.tgz"
  sha256 "735fe227414cee065736a2f6191d1435ca438e652c061f016bc8899de5ff85ee"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink libexec/"bin/roku"
  end

  test do
    assert_match "Roku CLI", shell_output("#{bin}/roku --help")
  end
end
