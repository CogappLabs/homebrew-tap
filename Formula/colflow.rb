class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.1/colflow-darwin-arm64.tar.gz"
      sha256 "d4c8ed812665e0b20f7da295fff16cb750a14653d94393add5a814827796b9e6"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.1/colflow-darwin-amd64.tar.gz"
      sha256 "83a04b1ccc6c920c8541f6e3645fb632f6880efb332cbe3fa3aa51c8108f4c1e"
    end
  end

  on_linux do
    url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.1/colflow-linux-amd64.tar.gz"
    sha256 "fce7717e75e26103d80ef19a3f059c70a0231fbe73b5a9834198f017b11c0acd"
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
