# This file was generated by GoReleaser. DO NOT EDIT.
class Kafkactl < Formula
  desc "CLI for Apache Kafka and Zookeeper Management."
  homepage "http://www.jbvm.io/kafkactl"
  version "1.0.26"
  bottle :unneeded
  if OS.mac?
    url "https://github.com/jbvmio/kafkactl/releases/download/v1.0.26/kafkactl_1.0.26_Darwin_x86_64.tar.gz"
    sha256 "d41f344db6604479e822df30fc6c16e61ec4b655cb3b6f0651fbc598e9297f42"

  devel do
    url "https://github.com/jbvmio/kafkactl/releases/download/v1.0.22-beta.12858318/kafkactl_1.0.22-beta.12858318_Darwin_x86_64.tar.gz"
    version "1.0.22-beta.12858318"
    sha256 "ef16cf3dee6afc23ebe5ac8505af3e1b08dcb1022c0808cdfbc3fa6d1f96ca1f"
  end

  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jbvmio/kafkactl/releases/download/v1.0.26/kafkactl_1.0.26_Linux_x86_64.tar.gz"
      sha256 "3fe58121d52eb56ced4423fa88de453775ffc57adc5206023276a97367feb855"
    end
  end
  def install
    bin.install "kafkactl"
  end
  test do
    system "#{bin}/kafkactl version"
  end
