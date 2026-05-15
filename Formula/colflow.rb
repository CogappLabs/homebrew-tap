class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.2/colflow-darwin-arm64.tar.gz"
      sha256 "cb19e5747f8fe380abe86a91337b3aba956e34e8f338a4a2cd438d2a882bf074"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.2/colflow-darwin-amd64.tar.gz"
      sha256 "4d7efbb43d9dc075d8847ad3386d93e03826a68662612ef9ea6226f77318cacb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.2/colflow-linux-arm64.tar.gz"
      sha256 "33c3c20849e6a3601ec897765aff043af016c13aaebe18e41796573cd7032b8c"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.2/colflow-linux-amd64.tar.gz"
      sha256 "f9df6572af00faeeff89af6ac4a3c07f1e1da102496ffdca753a4839d90569f6"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
