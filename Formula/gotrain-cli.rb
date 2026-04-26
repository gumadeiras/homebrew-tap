require "language/node"

class GotrainCli < Formula
  include Language::Node

  desc "Atomic CLI for MTA train departures"
  homepage "https://github.com/gumadeiras/gotrain-cli"
  url "https://registry.npmjs.org/gotrain-cli/-/gotrain-cli-1.2.0.tgz"
  sha256 "d21be05d3d52425eccc88c9a429f9a368faf833ce3a13539488e65db1c5feace"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec), "--ignore-scripts"
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
