class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.30/busly-cli-v0.64.30-osx-arm64.tar.gz"
  version "0.64.30"
  sha256 "9cb24fde8fbe6a74b4c8ccca79b8e9bd3a8e93eb5fcb7d35f068b93e7b23c6ff"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
