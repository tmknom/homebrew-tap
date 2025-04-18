# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actdocs < Formula
  desc "actdocs 0.6.1"
  homepage "https://github.com/tmknom/actdocs"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tmknom/actdocs/releases/download/v0.6.1/actdocs_0.6.1_darwin_amd64"
      sha256 "f2308df8846b7113fc10c1c54afc5b9b5c5383db32bb39747b19d453b1cb5c2f"

      def install
        bin.install "actdocs_0.6.1_darwin_amd64" => "actdocs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tmknom/actdocs/releases/download/v0.6.1/actdocs_0.6.1_darwin_arm64"
      sha256 "cae687250d7e24800ec863747425a68b288d82c6c44d011dd68872e7a46899a5"

      def install
        bin.install "actdocs_0.6.1_darwin_arm64" => "actdocs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tmknom/actdocs/releases/download/v0.6.1/actdocs_0.6.1_linux_amd64"
        sha256 "55df7f5273a7628cba01982ee9956baeaa574942c5260015ae892a74ebe13caf"

        def install
          bin.install "actdocs_0.6.1_linux_amd64" => "actdocs"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tmknom/actdocs/releases/download/v0.6.1/actdocs_0.6.1_linux_arm64"
        sha256 "e634b3b53c7e76db80ed7e57bdab8786d05006d44bf3483670ebffd4ba876242"

        def install
          bin.install "actdocs_0.6.1_linux_arm64" => "actdocs"
        end
      end
    end
  end

  test do
    system "#{bin}/actdocs --version"
  end
end
