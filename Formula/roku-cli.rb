require "language/node"

class RokuCli < Formula
  include Language::Node

  desc "CLI and library for controlling Roku devices"
  homepage "https://github.com/gumadeiras/roku-cli"
  url "https://registry.npmjs.org/roku-ts-cli/-/roku-ts-cli-1.1.3.tgz"
  sha256 "5dcdf49b92c728db3b824d3495ed02ffedab2b32e1c34fa084d6bdf5d7cc1131"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec), "--ignore-scripts"
    (bin/"roku").write <<~SH
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/lib/node_modules/roku-ts-cli/dist/src/cli.js" "$@"
    SH
    chmod 0755, bin/"roku"
  end

  test do
    assert_match "Roku CLI", shell_output("#{bin}/roku --help")
  end
end
