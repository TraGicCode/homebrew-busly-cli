class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.7/busly-cli-v0.64.7-osx-arm64.tar.gz"
  version "0.64.7"
  sha256 "e684cefd01c796f0e0fa576a2b40e0f2ed9d10239069d33202e0032888be096e"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
