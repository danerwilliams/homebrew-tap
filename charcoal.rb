class Charcoal < Formula
  desc "Charcoal allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/charcoal"
  version "1.0.1"
  license "agpl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/danerwilliams/charcoal/releases/download/v1.0.1/ch-macos-arm64"
      sha256 "387c7be6bba3a50405ceae1997876ce13b9894855f73c6f3f394d7ec489fc33a"
      def install
        bin.install "ch-macos-arm64" => "ch"
      end
    else
      url "https://github.com/danerwilliams/charcoal/releases/download/v1.0.1/ch-macos-x64"
      sha256 "f58e02faa697ab45363cf1ce0470cb74ea8dbce422826b2100ea7124aa0f1801"
      def install
        bin.install "ch-macos-x64" => "ch"
      end
    end
  end

  if OS.linux?
    url "https://github.com/danerwilliams/charcoal/releases/download/v1.0.1/ch-linux"
    sha256 "2b7907ce8638be9e29d3cb96fc01387cff68f8a87d5abc14cc4644d3dcc3eccf"
    def install
      bin.install "ch-linux" => "ch"
    end
  end

  def caveats
    <<~EOS
      Charcoal installs the `ch` command (previously `gt`).
      If you have muscle memory for `gt`, add an alias to your shell:
        alias gt=ch
    EOS
  end

  test do
    assert_match "1.0.1", shell_output("#{bin}/ch --version")
  end
end
