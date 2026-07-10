# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.11.0/showagent_v0.11.0_darwin_arm64.tar.gz"
      sha256 "cd5e903a891a2b37b88d31e4f3ec07d41615996c729603f97fc44df926b3886a"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.11.0/showagent_v0.11.0_darwin_amd64.tar.gz"
      sha256 "19e165af31d218e9a0f9a9e4e81ff7eef02b9d6c614c29363a9994687f9607e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.11.0/showagent_v0.11.0_linux_arm64.tar.gz"
      sha256 "2d2a576f1eea03ec3d7564dc5cb1cd85b89561b43afadbcd592c4834ad30da81"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.11.0/showagent_v0.11.0_linux_amd64.tar.gz"
      sha256 "a5ff4f31b161fcb2a5321cecbf1b5ae8fc6a62da831198ed738912571d1f76b8"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
