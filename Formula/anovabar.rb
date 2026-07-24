class Anovabar < Formula
  desc "Bluetooth CLI for supported Anova cookers"
  homepage "https://github.com/gumadeiras/anovabar"
  url "https://github.com/gumadeiras/anovabar/releases/download/v0.1.5/anovabar-homebrew-source-0.1.5.tar.gz"
  sha256 "94cd7e157dfdbead654d075ef76b68a8da4c3867b417c6cb41a462f2131f9827"
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
