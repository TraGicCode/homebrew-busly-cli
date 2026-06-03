class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.9/busly-cli-v0.64.9-osx-arm64.tar.gz"
  version "0.64.9"
  sha256 "1599cacc1d7d5aaf031b13d2b3f3f9aad146978aba00de478a4e58bfa67dc7a1"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
