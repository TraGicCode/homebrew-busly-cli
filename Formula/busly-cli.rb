class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.61.0/busly-cli-v0.61.0-osx-arm64.tar.gz"
  version "0.61.0"
  sha256 "c414707834bc28e3fae1c32687336b547b302a8c5a371cf098fdad1216fb38cc"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
