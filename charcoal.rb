class Charcoal < Formula
  desc "Charcoal allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/charcoal"
  version "1.0.0"
  license "agpl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/danerwilliams/charcoal/releases/download/v1.0.0/ch-macos-arm64"
      sha256 "c07174e6feea9c039c95c51536882cf2e964c78dc80d7ebd976f995e6c5c88de"
      def install
        bin.install "ch-macos-arm64" => "ch"
      end
    else
      url "https://github.com/danerwilliams/charcoal/releases/download/v1.0.0/ch-macos-x64"
      sha256 "c06475f30b92b2c1c2e7b1666b41fcc4717517bab68d4a93129172575861d19f"
      def install
        bin.install "ch-macos-x64" => "ch"
      end
    end
  end

  if OS.linux?
    url "https://github.com/danerwilliams/charcoal/releases/download/v1.0.0/ch-linux"
    sha256 "0ac109bf5d6b78e2b9f3a33ab8bb17bc13e1d588c9274baf017c4da402b12197"
    def install
      bin.install "ch-linux" => "ch"
    end
  end

  def caveats
    <<~EOS
      Charcoal now installs the `ch` command (previously `gt`).
      If you have muscle memory for `gt`, add an alias to your shell:
        alias gt=ch
    EOS
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/ch --version")
  end
end
