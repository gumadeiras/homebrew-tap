class Flylight < Formula
  include Language::Python::Virtualenv

  desc "Sync and query Janelia FlyLight Split-GAL4 resources locally"
  homepage "https://github.com/gumadeiras/flylight-cli"
  url "https://github.com/gumadeiras/flylight-cli/releases/download/v0.12.7/flylight-0.12.7.tar.gz"
  sha256 "3c4693aea71c4ed7c38b15158e50fd3eb86a5a2f6a2956045533a86bcbe4db53"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flylight --version")
  end
end
