class BdscCli < Formula
  include Language::Python::Virtualenv

  desc "Sync and query BDSC datasets locally"
  homepage "https://github.com/gumadeiras/bdsc-cli"
  url "https://github.com/gumadeiras/bdsc-cli/releases/download/v0.2.1/bdsc_cli-0.2.1.tar.gz"
  sha256 "458b0dc3fa0388fe0fe81647c6573ecd2d3ea1cc23e32166a8fbed228d932ded"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bdsc --version")
  end
end
