class Fruitloops < Formula
  include Language::Python::Virtualenv

  desc "Agent-friendly CLI for querying connectome analysis tables"
  homepage "https://github.com/gumadeiras/fruitloops"
  url "https://github.com/gumadeiras/fruitloops/releases/download/v0.1.0/fruitloops-0.1.0.tar.gz"
  sha256 "9373fef6bc0c6789e26b87531e2b867af61732c112d675cb731335cfc1d2d7bf"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "fruitloops 0.1.0", shell_output("#{bin}/fruitloops --version")
  end
end
