class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.24/busly-cli-v0.64.24-osx-arm64.tar.gz"
  version "0.64.24"
  sha256 "2f9f3081cbcf047b882e25720b1f073dd3dc8c61666ed05ce41bae7fe5c4bf0e"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
