class Anovabar < Formula
  desc "Bluetooth CLI for supported Anova cookers"
  homepage "https://github.com/gumadeiras/anovabar"
  url "https://github.com/gumadeiras/anovabar/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "243b0c1ad2efee7167e2a80b60ec10f09c53db2237019c7eb89f386262279c5a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "./macos/build-cli-app.sh"
    libexec.install "dist/AnovaBarCLI.app", "dist/anovabar"
    bin.write_exec_script libexec/"anovabar"
  end

  def caveats
    <<~EOS
      This formula installs the CLI bundle only.

      The menu bar app is not included in the Homebrew package.
    EOS
  end

  test do
    assert_match "Control supported Anova devices over BLE", shell_output("#{bin}/anovabar --help")
  end
end
