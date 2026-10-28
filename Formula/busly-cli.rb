class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.28/busly-cli-v0.64.28-osx-arm64.tar.gz"
  version "0.64.28"
  sha256 "527b3514f0f47398a58b450b4cfac4870132b0e48e1ed1c092106e0f6225478c"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
