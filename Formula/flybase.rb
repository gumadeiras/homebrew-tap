class Flybase < Formula
  include Language::Python::Virtualenv

  desc "Sync and query FlyBase datasets locally"
  homepage "https://github.com/gumadeiras/flybase-cli"
  url "https://github.com/gumadeiras/flybase-cli/releases/download/v0.1.4/flybase-0.1.4.tar.gz"
  sha256 "cbe902c0b21507d3c16a9a8b3881c574af1c8c5490d29fa55ce95735cbb34d37"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
    if (bin/"flybase-cli").exist? && !(bin/"flybase").exist?
      (bin/"flybase").write <<~SH
        #!/bin/bash
        exec "#{bin}/flybase-cli" "$@"
      SH
      chmod 0755, bin/"flybase"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flybase --version")
  end
end
