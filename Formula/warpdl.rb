# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warpdl < Formula
  desc "The official Warp CLI download manager"
  homepage "https://warpdl.org"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.8/warp_0.0.8_macOS_amd64.tar.gz"
      sha256 "3c801154682c3575e5850fa28bde9d0c86d2a2c451c0f4643dc86744026205cf"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.8/warp_0.0.8_macOS_arm64.tar.gz"
      sha256 "297b8ca6fd8cff478381b2267541a4cc511a567f107243699b4448e6e17f0cf6"

      def install
        bin.install "warpdl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.8/warp_0.0.8_linux_arm64.tar.gz"
      sha256 "fd227250ea578f0f3be4e4f63d37bf5b16d14c28365dfa7fa13d84c4fd87737a"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.8/warp_0.0.8_linux_armv6.tar.gz"
      sha256 "0e909796c0e2e7b85ca64b42d175d2d4d4afe532daeddb33166d920a4c2c9d0f"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.8/warp_0.0.8_linux_amd64.tar.gz"
      sha256 "ca63aa0c082321ff7d1d32b0607ee9ec876d655e08eb7be81c3c55002d670ead"

      def install
        bin.install "warpdl"
      end
    end
  end

  test do
    system "#{bin}/warpdl --version"
  end
end
