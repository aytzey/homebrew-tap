# typed: false
# frozen_string_literal: true

class Showagent < Formula
  desc "Browse, resume, branch, and convert local AI coding sessions in one TUI"
  homepage "https://github.com/aytzey/showagent"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.11.1/showagent_v0.11.1_darwin_arm64.tar.gz"
      sha256 "dda3a32a23bc323934b152d21ab718ddf1918949ac9057345ea7f7a8b3026f77"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.11.1/showagent_v0.11.1_darwin_amd64.tar.gz"
      sha256 "939a8727777187c325f35e0773343714777388630b14cb501ccb098e54f6143d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aytzey/showagent/releases/download/v0.11.1/showagent_v0.11.1_linux_arm64.tar.gz"
      sha256 "7f53f657fa90c8a8c5c8ee5b848234846525d46bcb34e9fbce0ff76d853a21f1"
    else
      url "https://github.com/aytzey/showagent/releases/download/v0.11.1/showagent_v0.11.1_linux_amd64.tar.gz"
      sha256 "d4e7105f89ff16002a81a2647df08c3dad417b2a448b3a5ab952c9355806ff55"
    end
  end

  def install
    bin.install "showagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/showagent --version")
  end
end
