# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.7.0/showagent_v0.7.0_darwin_arm64.tar.gz"
      sha256 "82c6c24a4258be55ca73a66212b91d90f8efa3e1a126a3c5525471cf9ecf9c90"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.7.0/showagent_v0.7.0_darwin_amd64.tar.gz"
      sha256 "484f6d828a0e213d3d7f8f840edf4416ea90146adc58af92058006535121a516"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.7.0/showagent_v0.7.0_linux_arm64.tar.gz"
      sha256 "f0d71799b0c9fc06c9bd1957caa9f9ee522bd699269444d121a9786c5b693a2f"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.7.0/showagent_v0.7.0_linux_amd64.tar.gz"
      sha256 "c9b5659208120fa618d7d1eb7051a2521876cef5dcef9ff5d5c0d67f63369978"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
