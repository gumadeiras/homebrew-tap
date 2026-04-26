require "language/node"

class OfficeQuotesCli < Formula
  include Language::Node

  desc "The Office quotes CLI with offline and API modes"
  homepage "https://github.com/gumadeiras/office-quotes-cli"
  url "https://github.com/gumadeiras/office-quotes-cli/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "a15cffb15f8a6631100456fc55682440788427de04bbd5f1986cca62e400b06d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec), "--ignore-scripts"
    (bin/"office-quotes").write <<~SH
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/lib/node_modules/office-quotes-cli/office-quotes.js" "$@"
    SH
    chmod 0755, bin/"office-quotes"
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
