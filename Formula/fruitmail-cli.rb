require "language/node"

class FruitmailCli < Formula
  include Language::Node

  desc "Fast Apple Mail search CLI with body content support"
  homepage "https://github.com/gumadeiras/fruitmail-cli"
  url "https://registry.npmjs.org/apple-mail-search-cli/-/apple-mail-search-cli-1.1.0.tgz"
  sha256 "4cd45fdd0546e2043284a4f43cd1f034a52413dc49f1dafea9db085482708138"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec), "--ignore-scripts"
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
