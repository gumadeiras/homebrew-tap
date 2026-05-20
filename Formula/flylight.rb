class Flylight < Formula
  include Language::Python::Virtualenv

  desc "Sync and query Janelia FlyLight Split-GAL4 resources locally"
  homepage "https://github.com/gumadeiras/flylight-cli"
  url "https://github.com/gumadeiras/flylight-cli/releases/download/v0.12.5/flylight-0.12.5.tar.gz"
  sha256 "c6f515b78f3309642bec72eb1069b7b25fb17f3093e50fb3a720baac7076955c"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flylight --version")
  end
end
