# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.15.1/showagent_v0.15.1_darwin_arm64.tar.gz"
      sha256 "146571aaeb9dedfb196fa8bd7d304be4aab2d62d434a5c6b71363fafbb85cca3"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.15.1/showagent_v0.15.1_darwin_amd64.tar.gz"
      sha256 "94e1fbc4dd8b201a1bf752b9ee8956acf7690ceff9f9fca2340fb4817b377fc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.15.1/showagent_v0.15.1_linux_arm64.tar.gz"
      sha256 "261cdd92879db05f2b30f00d7cdd8b607072457ce2b04345995daa12c7a6ea56"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.15.1/showagent_v0.15.1_linux_amd64.tar.gz"
      sha256 "dd8af4d13cbe445f27e3aee191309c0eab2db9efff53e57ed1174797e0bd582d"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
