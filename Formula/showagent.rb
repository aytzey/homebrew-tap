# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.14.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.14.3/showagent_v0.14.3_darwin_arm64.tar.gz"
      sha256 "24ac366bef8fc6321c705ef2f7e5699a9c030fbd09b2b00008864f1654be5d9d"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.14.3/showagent_v0.14.3_darwin_amd64.tar.gz"
      sha256 "e04290d7f9ac8a58193979df875af6f6671af2c085044617cb3619eff22cebab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.14.3/showagent_v0.14.3_linux_arm64.tar.gz"
      sha256 "260a9bf7c26abd24b8163cd590325c5cd5ca0637e8bf8e845db0b2f91c42030b"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.14.3/showagent_v0.14.3_linux_amd64.tar.gz"
      sha256 "92473187b8ea2195944877a8f9c3e6632536da34ebfc9b974a53c13e5f53dd6a"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
