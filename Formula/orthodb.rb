class Orthodb < Formula
  include Language::Python::Virtualenv

  desc "Agent-friendly CLI for cached OrthoDB downloads and live API queries"
  homepage "https://github.com/gumadeiras/orthodb-cli"
  url "https://github.com/gumadeiras/orthodb-cli/releases/download/v0.1.3/orthodb-0.1.3.tar.gz"
  sha256 "d352334e9ec40e61506ccb557b4ba1c7c8cfc34519d7b3152f0b1a009d06a77b"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orthodb --version")
    assert_match "orthologous_group", shell_output("#{bin}/orthodb resolve 4977at9604")
  end
end
