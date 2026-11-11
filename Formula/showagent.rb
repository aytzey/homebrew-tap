# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.15.0/showagent_v0.15.0_darwin_arm64.tar.gz"
      sha256 "4a0d2184008f111a8c0b88b0308e2061b66068515be47ecb24880dcf364ca21d"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.15.0/showagent_v0.15.0_darwin_amd64.tar.gz"
      sha256 "07357c61afb1fd73eaa46778ec97a021d599ff06303192b971b585ccc280ca68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.15.0/showagent_v0.15.0_linux_arm64.tar.gz"
      sha256 "ce3918baa3d946cc992065439fd1ec9d6feacfd58f76fab9ae0f9803bd630c6f"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.15.0/showagent_v0.15.0_linux_amd64.tar.gz"
      sha256 "dba27935d8a949638312375d9c14846fc07145146c56075e73f44a153a7d4c69"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
