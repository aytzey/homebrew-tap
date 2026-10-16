# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.14.0/showagent_v0.14.0_darwin_arm64.tar.gz"
      sha256 "061c12527141e522d6b3d192123762123431df977608b33bc7d716a52a14bedb"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.14.0/showagent_v0.14.0_darwin_amd64.tar.gz"
      sha256 "64a2c151259be449e8cbb101d7dc118e7fcc19a9ffee4c7a214af4846f952a37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.14.0/showagent_v0.14.0_linux_arm64.tar.gz"
      sha256 "865714ef5ba502cbefc600bb0a0f9b22bfb957394b133d8ce602379b9ae8f1d7"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.14.0/showagent_v0.14.0_linux_amd64.tar.gz"
      sha256 "ce2ed5fe7afa9362e12ee2425c2905ecf7a08421495d791772b0b24dff0ef02b"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
