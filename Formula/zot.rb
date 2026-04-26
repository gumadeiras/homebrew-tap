class Zot < Formula
  desc "Small CLI for Zotero web and desktop APIs"
  homepage "https://github.com/gumadeiras/zot"
  url "https://github.com/gumadeiras/zot/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d697818c000be731ed70f498bbbad1864ed83c9f07d1d628dd3e098eec126a5b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Small Zotero CLI", shell_output("#{bin}/zot --help")
  end
end
