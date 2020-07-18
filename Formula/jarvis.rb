# This file was generated by GoReleaser. DO NOT EDIT.
class Jarvis < Formula
  desc "Onchain (EVM compatible) operation made easy"
  homepage "https://github.com/tranvictor/jarvis"
  version "0.0.15"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tranvictor/jarvis/releases/download/v0.0.15/jarvis_0.0.15_macOS_amd64.tar.gz"
    sha256 "58655cf12bb2b7956f65830e2f6ff1c5297742711cd4537c65668f76c16366bc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.15/jarvis_0.0.15_linux_amd64.tar.gz"
      sha256 "0d4f4e806098fa013c9d3fde12d1459ab6316cf49d6dbaaea5e80f77c65162f9"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tranvictor/jarvis/releases/download/v0.0.15/jarvis_0.0.15_linux_arm64.tar.gz"
        sha256 "7c324da370be840129f3435586e34ff6a954e5111cf52e4e342d5dcd9bddca30"
      else
      end
    end
  end
  
  head do
    url "https://github.com/tranvictor/jarvis.git"
    depends_on "go"
  end

  def install
    system "make", "jarvis" if build.head?
    bin.install "bin/jarvis"
  end

  test do
    help_text = shell_output("jarvis -h")
    assert_includes help_text, "Usage:"
  end
end
