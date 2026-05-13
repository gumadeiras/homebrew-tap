require "language/node"

class FruitmailCli < Formula
  include Language::Node

  desc "Fast Apple Mail search CLI with body content support"
  homepage "https://github.com/gumadeiras/fruitmail-cli"
  url "https://github.com/gumadeiras/fruitmail-cli/releases/download/v1.1.1/apple-mail-search-cli-1.1.1.tgz"
  sha256 "3acc72f0cfc9eb4ec9566e0dbc71df7bd3e88fd043ca739b335a7170916dd103"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(prefix: libexec), "--ignore-scripts"
    (bin/"fruitmail").write <<~SH
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/lib/node_modules/apple-mail-search-cli/bin/fruitmail" "$@"
    SH
    chmod 0755, bin/"fruitmail"
  end

  test do
    assert_match "Fast Apple Mail search via SQLite", shell_output("#{bin}/fruitmail --help")
  end
end
