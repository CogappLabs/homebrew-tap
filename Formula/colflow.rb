class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.6.0/colflow-darwin-arm64.tar.gz"
      sha256 "9efd7fe86e257f90c2d16f2ccbbe3311b03527d5486d73b23eb98c999414ae91"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.6.0/colflow-darwin-amd64.tar.gz"
      sha256 "a8f42ffeef25bbd6c6acad4a066ddc61c4debf25773ef5edfe6fab5cf14008bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.6.0/colflow-linux-arm64.tar.gz"
      sha256 "9f6df7f5b79b4cb88bc00fad5980712e5b8df982ccd3bffd942959fc76a0c132"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.6.0/colflow-linux-amd64.tar.gz"
      sha256 "b4e1263240d23c4bc327f4a7a9b8493c85a0fab5244e521b67bbd3e8d41f0fcb"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
