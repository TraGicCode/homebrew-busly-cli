class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.26/busly-cli-v0.64.26-osx-arm64.tar.gz"
  version "0.64.26"
  sha256 "cef27f85f93e326fe3b7296c72c2856f1749c74f1ccff46638631863d9f78128"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
