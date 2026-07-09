# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.9.0/showagent_v0.9.0_darwin_arm64.tar.gz"
      sha256 "192eb8695d217280ad0bf2881422afe60de388e3a26218ff0a307e4a10ff55c4"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.9.0/showagent_v0.9.0_darwin_amd64.tar.gz"
      sha256 "7c51b663e797597c9af575b64a99908adb3e24252a7465333d5cba19b10e73fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.9.0/showagent_v0.9.0_linux_arm64.tar.gz"
      sha256 "2f6547742ba010e489480b07523853c9c14ebbfa18d71faadb6bba61bd924da1"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.9.0/showagent_v0.9.0_linux_amd64.tar.gz"
      sha256 "f91730def7601a1fb64e358a81142cf63ae83b4adeee5200fe6af594eefaf712"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
