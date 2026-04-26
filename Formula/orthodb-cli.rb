class OrthodbCli < Formula
  include Language::Python::Virtualenv

  desc "Agent-friendly CLI for cached OrthoDB downloads and live API queries"
  homepage "https://github.com/gumadeiras/orthodb-cli"
  url "https://github.com/gumadeiras/orthodb-cli/releases/download/v0.1.0/orthodb_cli-0.1.0.tar.gz"
  sha256 "de2b3066f00b43ceb242e634c505cbe6bed88663f71dc7c469b516b6152a38d7"
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
