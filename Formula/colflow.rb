class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.8.0/colflow-darwin-arm64.tar.gz"
      sha256 "a519cd3611e529db11eb0336512e1783b971264502bb27001fcdd23154531422"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.8.0/colflow-darwin-amd64.tar.gz"
      sha256 "12efe5990707d4f9f1c73263dfa7808f37ec7d38da75707710e1264797acca83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.8.0/colflow-linux-arm64.tar.gz"
      sha256 "aadca57a2cda73ac4c1353ce6943c54b180d7051a1a52296bfa8e1a11887af5a"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.8.0/colflow-linux-amd64.tar.gz"
      sha256 "d726f28974e958ba66a5fc044148677f3ab6cace73c34ded8e71bda11f141598"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
