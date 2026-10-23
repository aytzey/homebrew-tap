# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.14.1/showagent_v0.14.1_darwin_arm64.tar.gz"
      sha256 "5a6d3a125cfe4231133bdef3755bc18b30725310f3bb116fe2e04bd44a859fbb"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.14.1/showagent_v0.14.1_darwin_amd64.tar.gz"
      sha256 "84213c21d167378f463c6a75bfa3cd191bfba814d595cf7c4e902846d0b1888d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.14.1/showagent_v0.14.1_linux_arm64.tar.gz"
      sha256 "352a1064052ac0ba23804c8525def03ae1ca3ac993c2568e58b9fec2da4eb7da"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.14.1/showagent_v0.14.1_linux_amd64.tar.gz"
      sha256 "20e8169d11f09f0f48a5ab03c01362584382d54a6801883cff7a9c203e0363b3"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
