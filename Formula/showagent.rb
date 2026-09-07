# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.11.3/showagent_v0.11.3_darwin_arm64.tar.gz"
      sha256 "afbf6df842204bd2452f29fef5cb561943fea6acbca41c32990a7268f5982723"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.11.3/showagent_v0.11.3_darwin_amd64.tar.gz"
      sha256 "4890e090ae3872ff44f3ac4df485307a1a2eb8f3fb087b798f789822fa2cac69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.11.3/showagent_v0.11.3_linux_arm64.tar.gz"
      sha256 "5689e3eb38d1f63a41a5560ead81e90aea10791f3754b835c23bcdc3ed10d642"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.11.3/showagent_v0.11.3_linux_amd64.tar.gz"
      sha256 "108297b9cecbbd34038f07a70487bb463568dc188e9f536ecfd813d3ebd2a05d"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
