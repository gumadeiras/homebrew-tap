class Bdsc < Formula
  include Language::Python::Virtualenv

  desc "Sync and query BDSC datasets locally"
  homepage "https://github.com/gumadeiras/bdsc-cli"
  url "https://github.com/gumadeiras/bdsc-cli/releases/download/v0.2.5/bdsc-0.2.5.tar.gz"
  sha256 "3e00837a97c5bde7b16ce8a2eeb85c7c710173cdf0c89b78455b1ba10087a0fb"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bdsc --version")
  end
end
