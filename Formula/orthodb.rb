class Orthodb < Formula
  include Language::Python::Virtualenv

  desc "Agent-friendly CLI for cached OrthoDB downloads and live API queries"
  homepage "https://github.com/gumadeiras/orthodb-cli"
  url "https://github.com/gumadeiras/orthodb-cli/releases/download/v0.1.5/orthodb-0.1.5.tar.gz"
  sha256 "e623982976c55ba275e52fcb62afb2ec8412a33bd14ce196170ef42c1d70c72b"
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
