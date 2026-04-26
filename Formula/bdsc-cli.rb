class BdscCli < Formula
  include Language::Python::Virtualenv

  desc "Sync and query BDSC datasets locally"
  homepage "https://github.com/gumadeiras/bdsc-cli"
  url "https://github.com/gumadeiras/bdsc-cli/releases/download/v0.2.0/bdsc_cli-0.2.0.tar.gz"
  sha256 "4d40f40078ece1d753e90359562bc576bcd9c0666c7957bb3c22ed370179a2f2"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bdsc --version")
  end
end
