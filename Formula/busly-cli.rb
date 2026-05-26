class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.5/busly-cli-v0.64.5-osx-arm64.tar.gz"
  version "0.64.5"
  sha256 "8d901e26319dbc34bf1a99c263bfe42b5fc6f2ec5627f4ac5854661774476940"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
