class Zot < Formula
  desc "Small CLI for Zotero web and desktop APIs"
  homepage "https://github.com/gumadeiras/zot"
  url "https://github.com/gumadeiras/zot/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "00c09904754fbcd4d43f207ba405f9af8188f1e384cd547c058fa1a118b1b77a"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Small Zotero CLI", shell_output("#{bin}/zot --help")
  end
end
