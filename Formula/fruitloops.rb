class Fruitloops < Formula
  include Language::Python::Virtualenv

  desc "Agent-friendly CLI for querying connectome analysis tables"
  homepage "https://github.com/gumadeiras/fruitloops"
  url "https://github.com/gumadeiras/fruitloops/releases/download/v0.1.2/fruitloops-0.1.2.tar.gz"
  sha256 "9ac5b68f7d8bd905eaab911ed887d558cad811c68e6939be8f0d666f9324b288"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources

    (libexec/"share/fruitloops/data").install Dir["data/*"]

    (pkgshare/"requirements-all.txt").write <<~EOS
      duckdb>=1.1
      pyarrow>=14
      caveclient
      neuprint-python
      matplotlib>=3.7
    EOS

    (bin/"fruitloops-install-extras").write <<~EOS
      #!/bin/bash
      set -euo pipefail
      exec "#{opt_libexec}/bin/python" -m pip install -r "#{opt_pkgshare}/requirements-all.txt" "$@"
    EOS
  end

  def caveats
    <<~EOS
      The brewed CLI installs lightweight by default.

      To add all optional Python extras into fruitloops' Homebrew virtualenv:
        fruitloops-install-extras
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fruitloops --version")
    assert_path_exists pkgshare/"requirements-all.txt"
    assert_match "Usage:", shell_output("#{bin}/fruitloops-install-extras --help")
    assert_match "flywire", shell_output("#{bin}/fruitloops datasets")
  end
end
