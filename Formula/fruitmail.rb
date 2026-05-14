require "language/node"

class FruitmailCli < Formula
  include Language::Node

  desc "Fast Apple Mail search CLI with body content support"
  homepage "https://github.com/gumadeiras/fruitmail-cli"
  url "https://github.com/gumadeiras/fruitmail-cli/releases/download/v1.1.2/apple-mail-search-cli-1.1.2.tgz"
  sha256 "8e50b0059bc5f646e2dfd2a08b3be40f6e2feba1e82a4cbef6676b30ba0ebc6d"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
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
