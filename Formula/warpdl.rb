# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warpdl < Formula
  desc "The official Warp CLI download manager"
  homepage "https://warpdl.org"
  version "0.0.28"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.28/warp_0.0.28_macOS_amd64.tar.gz"
      sha256 "e5eb74621ad301331c730a1848bb2700ae90f81126c671f0fccddcdb226c0fca"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.28/warp_0.0.28_macOS_arm64.tar.gz"
      sha256 "32767a77a5818de4c657ebad9cdd7d472fef32529c7d35143cf6135d5bbf3ae3"

      def install
        bin.install "warpdl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.28/warp_0.0.28_linux_arm64.tar.gz"
      sha256 "453b753497ee3c8aec82fb34bae0f51f9c3275a95d8e81282b068c1afa6786b2"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.28/warp_0.0.28_linux_armv6.tar.gz"
      sha256 "59ebd87e883b205f9cbb1230a56e642695ac70acdb4012bd01aec979516e1f1b"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.28/warp_0.0.28_linux_amd64.tar.gz"
      sha256 "134939b154232aa61dc622cda451b8f061b98ea065960b626c5a5cba6dfed064"

      def install
        bin.install "warpdl"
      end
    end
  end

  test do
    system "#{bin}/warpdl --version"
  end
end
