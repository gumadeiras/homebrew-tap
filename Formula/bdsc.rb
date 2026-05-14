class Bdsc < Formula
  include Language::Python::Virtualenv

  desc "Sync and query BDSC datasets locally"
  homepage "https://github.com/gumadeiras/bdsc-cli"
  url "https://github.com/gumadeiras/bdsc-cli/releases/download/v0.2.2/bdsc_cli-0.2.2.tar.gz"
  sha256 "710222e21863b8a7b300a3a73ce28bd96ada3bd28ab610e066f9dc0ddce1cb79"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bdsc --version")
  end
end
