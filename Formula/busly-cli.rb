class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.11/busly-cli-v0.64.11-osx-arm64.tar.gz"
  version "0.64.11"
  sha256 "cf3e083e74afdfe11f56ed12e99e1657bfe325a9fe56fae9bea212c00fe09fc8"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
