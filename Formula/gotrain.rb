require "language/node"

class GotrainCli < Formula
  include Language::Node

  desc "Atomic CLI for MTA train departures"
  homepage "https://github.com/gumadeiras/gotrain-cli"
  url "https://github.com/gumadeiras/gotrain-cli/releases/download/v1.2.2/gotrain-cli-1.2.2.tgz"
  sha256 "643143ffbf0f7cfea82e879d64f7925f98b192fc0134fe01ce2e977035a6888a"
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
