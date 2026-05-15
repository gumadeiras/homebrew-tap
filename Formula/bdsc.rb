class Bdsc < Formula
  include Language::Python::Virtualenv

  desc "Sync and query BDSC datasets locally"
  homepage "https://github.com/gumadeiras/bdsc-cli"
  url "https://github.com/gumadeiras/bdsc-cli/releases/download/v0.2.4/bdsc-0.2.4.tar.gz"
  sha256 "df38d6b8572b265a45585defa49ff7c1f8351c4c8aeadaa7105b7287d66f7268"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bdsc --version")
  end
end
