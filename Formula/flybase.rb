class Flybase < Formula
  include Language::Python::Virtualenv

  desc "Sync and query FlyBase datasets locally"
  homepage "https://github.com/gumadeiras/flybase-cli"
  url "https://github.com/gumadeiras/flybase-cli/releases/download/v0.1.6/flybase-0.1.6.tar.gz"
  sha256 "5938a8b896f1964280961bf51e18116121b8aeebbf8969f56b3fc37e1fa9f5e5"
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
