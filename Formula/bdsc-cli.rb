class BdscCli < Formula
  include Language::Python::Virtualenv

  desc "Sync and query BDSC datasets locally"
  homepage "https://github.com/gumadeiras/bdsc-cli"
  url "https://github.com/gumadeiras/bdsc-cli/releases/download/v0.2.0/bdsc_cli-0.2.0.tar.gz"
  sha256 "5bc43e6ca2c6c0d16e5d4a1305efab18281e71496a1aa928b35e44795e990b31"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bdsc --version")
  end
end
