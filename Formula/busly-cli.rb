class BuslyCli < Formula
  desc "Unofficial CLI for NServiceBus"
  homepage "https://tragiccode.com/busly-cli/"
  url "https://github.com/TraGicCode/busly-cli/releases/download/v0.56.0/busly-cli-v0.56.0-osx-arm64.tar.gz"
  version "0.56.0"
  sha256 "e99f7d97cc78e4414b014d90bcc05d8375f4960ed449b7571ffd64273f1bca99"
  license "Apache-2.0"


  def install
    bin.install "Busly.Console" => "busly"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/busly --version")
  end
end
