class Flybase < Formula
  include Language::Python::Virtualenv

  desc "Sync and query FlyBase datasets locally"
  homepage "https://github.com/gumadeiras/flybase-cli"
  url "https://github.com/gumadeiras/flybase-cli/releases/download/v0.1.2/flybase_cli-0.1.2.tar.gz"
  sha256 "4957ed7d9a9097a2349283b947f7bb9051ee2fc99cc7ad1922b5951fe99cafc3"
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
