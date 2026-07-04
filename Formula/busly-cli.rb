class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.16/busly-cli-v0.64.16-osx-arm64.tar.gz"
  version "0.64.16"
  sha256 "d01f737727a35f91af4a42fd7486f0dabe7c90d4a1e74c21c35f1048f161af5b"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
