require "language/node"

class Roku < Formula
  include Language::Node

  desc "CLI and library for controlling Roku devices"
  homepage "https://github.com/gumadeiras/roku-cli"
  url "https://github.com/gumadeiras/roku-cli/releases/download/v1.1.4/roku-ts-cli-1.1.4.tgz"
  sha256 "e8dd24de09b4c520a39a9e24cf7532c975abbbc64add61bf76c1bb92ff51bdb1"
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
