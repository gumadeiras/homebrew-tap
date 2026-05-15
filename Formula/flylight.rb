class Flylight < Formula
  include Language::Python::Virtualenv

  desc "Sync and query Janelia FlyLight Split-GAL4 resources locally"
  homepage "https://github.com/gumadeiras/flylight-cli"
  url "https://github.com/gumadeiras/flylight-cli/releases/download/v0.12.4/flylight-0.12.4.tar.gz"
  sha256 "2f9202bb75e48642b50a65c14a5aad3ca899d753174dba3a5486374339f6c5c4"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flylight --version")
  end
end
