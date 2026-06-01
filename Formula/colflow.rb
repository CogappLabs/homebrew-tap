class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.5.0/colflow-darwin-arm64.tar.gz"
      sha256 "81adf7b686a5f7456c5946dff30adbd6257a7722f97c02f950ed41bb1b45893c"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.5.0/colflow-darwin-amd64.tar.gz"
      sha256 "4680e4dd53e6585dbd85f211124c664de44582a7c221583363b46fd2349fe2fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.5.0/colflow-linux-arm64.tar.gz"
      sha256 "8c0448fc6631aab2cd680bf5a6f7fee30c101e6ea0d141251e2f454ebef11376"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.5.0/colflow-linux-amd64.tar.gz"
      sha256 "89810b20a6a6b6a246f4bd843e3c58ab945f5b797007d94b18460db48b88c2f3"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
