# This file was generated by GoReleaser. DO NOT EDIT.
class Kafkactl < Formula
  desc "CLI for Apache Kafka and Zookeeper Management."
  homepage "http://www.jbvm.io/kafkactl"
  url "https://github.com/jbvmio/kafkactl/releases/download/v1.0.22-beta.12858318/kafkactl_1.0.22-beta.12858318_Darwin_x86_64.tar.gz"
  version "1.0.22-beta.12858318"
  sha256 "ef16cf3dee6afc23ebe5ac8505af3e1b08dcb1022c0808cdfbc3fa6d1f96ca1f"
  
  devel do
    url "https://github.com/jbvmio/kafkactl/releases/download/{{ .Tag }}/{{ .ArtifactName }}"
    sha256 "sha256here"
  end

  def install
    bin.install "kafkactl"
  end

  test do
    system "#{bin}/kafkactl version"
  end
end
