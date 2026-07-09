# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.8.0/showagent_v0.8.0_darwin_arm64.tar.gz"
      sha256 "59f3314c7b2b473f2be7ab2af98e5bf3a0110dc1adbee8940e07fffbd542c90e"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.8.0/showagent_v0.8.0_darwin_amd64.tar.gz"
      sha256 "a3150999a3114e3e61230c6c6a00571d3951d658525550b3ffb7fd55a614b06f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.8.0/showagent_v0.8.0_linux_arm64.tar.gz"
      sha256 "4b3437ace235ff915c3f48b266ac739c002c66201b4da7017bf2cd4af57b40b7"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.8.0/showagent_v0.8.0_linux_amd64.tar.gz"
      sha256 "1195a7945d218c2e495aa587f8ee5522912539875e7e17619ec693dbcddba291"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
