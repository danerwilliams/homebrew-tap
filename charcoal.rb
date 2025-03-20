class Charcoal < Formula
  desc "Charcoal allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/charcoal"
  version "0.2.4"
  license "apgl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.4/gt-macos-arm64"
      sha256 "82051b0587a9b5dfa0175e8d9d042dd690a301ef5408b379eb249356523cba0f"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.4/gt-macos-x64"
      sha256 "76a9981e7882ae15495daf1178b0263860b9a1b2cd95c795aaf16cd6b5a98ffa"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.4/gt-linux"
    sha256 "a16d1e17472e94faa00326b89b6a610a256ee9e8de0a772d3967938603d5348b"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    raise "Test not implemented."
  end
end
