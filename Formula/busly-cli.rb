class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.22/busly-cli-v0.64.22-osx-arm64.tar.gz"
  version "0.64.22"
  sha256 "6fefc4bac1dc698e9812701d87a117a1c20caa08520ca6081d3a403fe8b88ca7"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
