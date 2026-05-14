require "language/node"

class GotrainCli < Formula
  include Language::Node

  desc "Atomic CLI for MTA train departures"
  homepage "https://github.com/gumadeiras/gotrain-cli"
  url "https://github.com/gumadeiras/gotrain-cli/releases/download/v1.2.1/gotrain-cli-1.2.1.tgz"
  sha256 "b8adc3682ccf7fb07135d26e82a77f3ca2c9addbbdb59efea0e45854842fdd36"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    (bin/"gotrain").write <<~SH
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/lib/node_modules/gotrain-cli/dist/index.js" "$@"
    SH
    chmod 0755, bin/"gotrain"
  end

  test do
    assert_match "Atomic CLI for NYC train departures", shell_output("#{bin}/gotrain --help")
  end
end
