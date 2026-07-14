class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.18/busly-cli-v0.64.18-osx-arm64.tar.gz"
  version "0.64.18"
  sha256 "088399ca9ee29e2c38f6753ff5d6692654c756719b026d03964cd5dd2e037ac6"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
