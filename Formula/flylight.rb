class Flylight < Formula
  include Language::Python::Virtualenv

  desc "Sync and query Janelia FlyLight Split-GAL4 resources locally"
  homepage "https://github.com/gumadeiras/flylight-cli"
  url "https://github.com/gumadeiras/flylight-cli/releases/download/v0.12.6/flylight-0.12.6.tar.gz"
  sha256 "b843cf1c486cda8b8c7012fa489afcc2d800e4982c0550ee6ccd8861db804345"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flylight --version")
  end
end
