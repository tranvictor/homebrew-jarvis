# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jarvis < Formula
  desc "Onchain (EVM compatible) operation made easy"
  homepage "https://github.com/tranvictor/jarvis"
  version "0.0.33"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.33/jarvis_0.0.33_macOS_amd64.tar.gz"
      sha256 "95c4c12d826cc6965c38883c2f0adc1ded9ece3acc8c5b0b023c0ab5e12a1fe4"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.33/jarvis_0.0.33_linux_arm64.tar.gz"
      sha256 "fc3911b65f50f586ec302c7817324fbe27e0770c7d0c510fd5374b7814b99d3d"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.33/jarvis_0.0.33_linux_amd64.tar.gz"
      sha256 "d3a8064b6110f02eed76d80260c836ce9705233fc47536dc5dd3feaf6e894d96"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
  end

  head do
    url "https://github.com/tranvictor/jarvis.git"
    depends_on "go"
  end

  test do
    help_text = shell_output("jarvis -h")
    assert_includes help_text, "Usage:"
  end
end
