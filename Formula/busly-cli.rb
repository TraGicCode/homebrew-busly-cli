class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.29/busly-cli-v0.64.29-osx-arm64.tar.gz"
  version "0.64.29"
  sha256 "a15e4d4e336daba3f42996eb48f13f5729539124775719902df65e1e8b8bc7f3"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
