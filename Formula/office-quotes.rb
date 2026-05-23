require "language/node"

class OfficeQuotes < Formula
  include Language::Node

  desc "Sitcom quotes CLI with offline and API modes"
  homepage "https://github.com/gumadeiras/office-quotes-cli"
  url "https://github.com/gumadeiras/office-quotes-cli/releases/download/v1.1.5/gumadeiras-office-quotes-1.1.5.tgz"
  sha256 "8612a49dfb7054f102a3c64c7af867fc67aef9807d200258709ba4ff0e725c43"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink libexec/"bin/office-quotes"
  end

  def caveats
    <<~EOS
      The first `office-quotes --format ...` run installs Chromium if it is missing.
    EOS
  end

  test do
    assert_match "office-quotes", shell_output("#{bin}/office-quotes --help")
  end
end
