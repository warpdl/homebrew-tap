# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warpdl < Formula
  desc "The official Warp CLI download manager"
  homepage "https://warpdl.org"
  version "0.0.43"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.43/warp_0.0.43_macOS_amd64.tar.gz"
      sha256 "a102cbc0ef03a21c87d54ff9483086280f31c364b2342fa7139a91576a48abc9"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.43/warp_0.0.43_macOS_arm64.tar.gz"
      sha256 "4db92d625299f198c78c1f637ed96e831dc9f11ce7a6ab569a9ccf0b95092642"

      def install
        bin.install "warpdl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.43/warp_0.0.43_linux_arm64.tar.gz"
      sha256 "89e42a2baf904b39307debd77819e3237b0aaa7127db3059f196b1e5e068dc68"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.43/warp_0.0.43_linux_armv6.tar.gz"
      sha256 "5dd8100ea300e501fecc5ab82b3d3bfeac9c1df0566b6cf7768c8280bb8750b5"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.43/warp_0.0.43_linux_amd64.tar.gz"
      sha256 "dea491f72e0516a660e3af59339bb760019bcf0a6691dc6efd69de176b0b0d8b"

      def install
        bin.install "warpdl"
      end
    end
  end

  test do
    system "#{bin}/warpdl --version"
  end
end
