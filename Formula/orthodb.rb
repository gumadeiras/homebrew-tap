class Orthodb < Formula
  include Language::Python::Virtualenv

  desc "Agent-friendly CLI for cached OrthoDB downloads and live API queries"
  homepage "https://github.com/gumadeiras/orthodb-cli"
  url "https://github.com/gumadeiras/orthodb-cli/releases/download/v0.1.4/orthodb-0.1.4.tar.gz"
  sha256 "ae38d97309994ddc64afb1a6f177b9194accfdbf4dfcc2956a62797a4bcb7ace"
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
