class FlybaseCli < Formula
  include Language::Python::Virtualenv

  desc "Sync and query FlyBase datasets locally"
  homepage "https://github.com/gumadeiras/flybase-cli"
  url "https://github.com/gumadeiras/flybase-cli/releases/download/v0.1.0/flybase_cli-0.1.0.tar.gz"
  sha256 "da31007c99c1a7f2d1d1ef673ee15edd5939225c60f8a1d4fe2971bff8af891c"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flybase-cli --version")
  end
end
