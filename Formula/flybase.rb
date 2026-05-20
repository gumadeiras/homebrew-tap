class Flybase < Formula
  include Language::Python::Virtualenv

  desc "Sync and query FlyBase datasets locally"
  homepage "https://github.com/gumadeiras/flybase-cli"
  url "https://github.com/gumadeiras/flybase-cli/releases/download/v0.1.5/flybase-0.1.5.tar.gz"
  sha256 "45c16b184390ab37022fa8f028ed51c8c4d9f4b8a754fefa3d7853ec699b2ca0"
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
