class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.20/busly-cli-v0.64.20-osx-arm64.tar.gz"
  version "0.64.20"
  sha256 "f8bfd66ef0fe5e9964002a60393d4c6b1fbf2c7fcba295a5f00f8901ee5b1c78"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
