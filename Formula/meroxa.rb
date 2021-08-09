# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "1.0.1"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v1.0.1/meroxa_1.0.1_darwin_amd64.tar.gz"
      sha256 "a77e02f11e7c4403989aab6935b1695a8db6eb9ef09d525e8a8138632737c88c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/meroxa/cli/releases/download/v1.0.1/meroxa_1.0.1_darwin_arm64.tar.gz"
      sha256 "cccb890a6b87979997bac7cb2dea069492a2142adfc53022827cb1402f9574ef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v1.0.1/meroxa_1.0.1_linux_amd64.tar.gz"
      sha256 "0f9efcc30b97a8b679af4b27b3ade55433141901f1ddf1c41cdcdbc1c2ce37ee"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meroxa/cli/releases/download/v1.0.1/meroxa_1.0.1_linux_arm64.tar.gz"
      sha256 "eab949405dab806aaf66d0e9ff354d150a58757cfdf8d02d801adba4f3cdcf3b"
    end
  end

  head "https://github.com/meroxa/cli.git"

  def install
    bin.install "meroxa"
    prefix.install_metafiles
    bash_completion.install "etc/completion/meroxa.completion.sh"
    zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
    fish_completion.install "etc/completion/meroxa.completion.fish"
    man.install "etc/man/man1"
  end

  test do
    shell_output("#{bin}/meroxa version").match(/1.0.1/)
  end
end
