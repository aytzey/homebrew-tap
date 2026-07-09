# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.10.0/showagent_v0.10.0_darwin_arm64.tar.gz"
      sha256 "4a32d93f99506b30287bf80c5aff2c9232f5f7ead5d7ea2130075809e095b6ea"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.10.0/showagent_v0.10.0_darwin_amd64.tar.gz"
      sha256 "ab205aab0ea10fe9ec20d93950ac059215a2c270d018fe20f2c27210517335a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.10.0/showagent_v0.10.0_linux_arm64.tar.gz"
      sha256 "bb7f716cf15411f2a56a3f1a3adb285d577c6580d1d44b32869fa454c59efca5"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.10.0/showagent_v0.10.0_linux_amd64.tar.gz"
      sha256 "2bec3e0945f442099c32f7ed8cb6a1498bc9247ec1b24574f3e7d279e6a5035b"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
