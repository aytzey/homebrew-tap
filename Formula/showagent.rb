# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.16.0/showagent_v0.16.0_darwin_arm64.tar.gz"
      sha256 "6adef247aeeec2e7d7cd96412c87d8825bef2f98db7982a1a08f594ede47ba7b"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.16.0/showagent_v0.16.0_darwin_amd64.tar.gz"
      sha256 "ccf03ab9a1969f8449ec34bc9433291c6d4a0eba9cb0cc0571e22c88154399c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.16.0/showagent_v0.16.0_linux_arm64.tar.gz"
      sha256 "042c6c9d59081b3847853a5af419a7f0171856bb1f4dc1b94cd5b6edb73701e2"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.16.0/showagent_v0.16.0_linux_amd64.tar.gz"
      sha256 "adaa828be04411bef9dc0a438f61daab4460b1d781754febbd5d48b8539e7177"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
