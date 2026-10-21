class Zot < Formula
  desc "Small CLI for Zotero web and desktop APIs"
  homepage "https://github.com/gumadeiras/zot"
  url "https://github.com/gumadeiras/zot/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "a8ef8371b5b5c21711e7129fb097986ef455f0fba2ececaf7dc045fa0a1a3fcf"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Small Zotero CLI", shell_output("#{bin}/zot --help")
  end
end
