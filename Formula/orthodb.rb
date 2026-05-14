class Orthodb < Formula
  include Language::Python::Virtualenv

  desc "Agent-friendly CLI for cached OrthoDB downloads and live API queries"
  homepage "https://github.com/gumadeiras/orthodb-cli"
  url "https://github.com/gumadeiras/orthodb-cli/releases/download/v0.1.1/orthodb_cli-0.1.1.tar.gz"
  sha256 "4d6b6d5ca55b7b0bc293d4e4342e9150640b6c1518558594b86f07b575efc334"
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
