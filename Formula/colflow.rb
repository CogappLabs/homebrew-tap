class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.9.1/colflow-darwin-arm64.tar.gz"
      sha256 "35525d42d0fb97ff62ebee8e4948168e6995b4cb434ad0927f1aad884007948b"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.9.1/colflow-darwin-amd64.tar.gz"
      sha256 "23cdf833aa1a8dadd694f82d676d655e1db62406ee9c42c170fd9ae92d802293"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.9.1/colflow-linux-arm64.tar.gz"
      sha256 "8ebe06cf325dadb19c5ef2eabcc137a72ffa4dc89d6a38ff89cff533e2135513"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.9.1/colflow-linux-amd64.tar.gz"
      sha256 "4b1e23e6d31ff8accbf1b79d81899402a8963a46f0280ea8a1490ba19f4f3f42"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
