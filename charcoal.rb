class Charcoal < Formula
  desc "Charcoal allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/charcoal"
  version "0.2.4"
  license "apgl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.4/gt-macos-arm64"
      sha256 "b0bff69a3807446849ec2630c0dc0f098cc2b93623ea546ef8c04ab6d88f6067"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.4/gt-macos-x64"
      sha256 "45adbf0e6d13380545a63c11b91f60b7d52129504116d757bc310a9560a5e08d"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.4/gt-linux"
    sha256 "686bd9e3ad2ea7584ac4942c553387e238e1b9ebd25bbb4ededb00f6cdc60f96"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    raise "Test not implemented."
  end
end
