require "language/node"

class OfficeQuotes < Formula
  include Language::Node

  desc "Sitcom quotes CLI with offline and API modes"
  homepage "https://github.com/gumadeiras/office-quotes-cli"
  url "https://github.com/gumadeiras/office-quotes-cli/releases/download/v1.1.2/office-quotes-cli-1.1.2.tgz"
  sha256 "73e83d4b92a0bf5ca63b24c05cbb130652d1759d6c7033ef1a2555a8002305db"
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
