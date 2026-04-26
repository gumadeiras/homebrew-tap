class FlylightCli < Formula
  include Language::Python::Virtualenv

  desc "Sync and query Janelia FlyLight Split-GAL4 resources locally"
  homepage "https://github.com/gumadeiras/flylight-cli"
  url "https://github.com/gumadeiras/flylight-cli/releases/download/v0.12.1/flylight_cli-0.12.1.tar.gz"
  sha256 "8b86757a55a5959fde02f66baa83913a4fe7a360de165cb505f8f6bbc772cf00"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flylight --version")
  end
end
