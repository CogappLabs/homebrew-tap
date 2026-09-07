class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.7.1/colflow-darwin-arm64.tar.gz"
      sha256 "3ffd626fe27726277060adbdee68482fbf394f4fefb6fe00140df9c7fd333c92"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.7.1/colflow-darwin-amd64.tar.gz"
      sha256 "f25ef4ecc0f0890d72d75223d63f5fcc368ed0cd3f1a72a5afdd74dbfb74d825"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.7.1/colflow-linux-arm64.tar.gz"
      sha256 "e6a3bfb9c1afbf13c1e5af41bf8dffa675e9a14feb728b7c9675d8f5b15cadf0"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.7.1/colflow-linux-amd64.tar.gz"
      sha256 "cfce239df564e7f89de71d1ac5d2c2b7b1b8296e005eed6407058300134d1d87"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
