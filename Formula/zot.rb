class Zot < Formula
  desc "Small CLI for Zotero web and desktop APIs"
  homepage "https://github.com/gumadeiras/zot"
  url "https://github.com/gumadeiras/zot/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "fa6d68796f4f9bdab0bf3ea4f112249d90fa9fe6496570c7bce7b7540601e319"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Small Zotero CLI", shell_output("#{bin}/zot --help")
  end
end
