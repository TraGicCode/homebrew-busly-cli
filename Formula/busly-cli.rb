class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.23/busly-cli-v0.64.23-osx-arm64.tar.gz"
  version "0.64.23"
  sha256 "0416e75568a635a0257843fff1cfbe1332b363ce48362454c8dc1538e452a651"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
