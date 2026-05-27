class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.64.6/busly-cli-v0.64.6-osx-arm64.tar.gz"
  version "0.64.6"
  sha256 "b8f73fcc9d169c08019027bc6ce42120d7dc74bb9714fcb987345febb23eb39d"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
