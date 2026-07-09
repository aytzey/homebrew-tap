# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.8.2/showagent_v0.8.2_darwin_arm64.tar.gz"
      sha256 "dd2bdd2e7c09bdfe5922855e83ca935af897298b966ee9f33d4ac0d3a531b481"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.8.2/showagent_v0.8.2_darwin_amd64.tar.gz"
      sha256 "b1f16ec07d80cf47f97221aebcab9d479178eab3bbc8dc5a013688e2abfc01bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.8.2/showagent_v0.8.2_linux_arm64.tar.gz"
      sha256 "6c14dcd61b1dfb95fcb86460894dbcd44a2fd7f6f5aa6096d7fcddd213572109"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.8.2/showagent_v0.8.2_linux_amd64.tar.gz"
      sha256 "7fbb077a29eae9ad00fef485a4a2d8f38146dc1fa9f3032339f8cbc4d9aed358"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
