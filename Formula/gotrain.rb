require "language/node"

class Gotrain < Formula
  include Language::Node

  desc "Atomic CLI for MTA train departures"
  homepage "https://github.com/gumadeiras/gotrain-cli"
  url "https://github.com/gumadeiras/gotrain-cli/releases/download/v1.2.2/gotrain-cli-1.2.2.tgz"
  sha256 "643143ffbf0f7cfea82e879d64f7925f98b192fc0134fe01ce2e977035a6888a"
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
