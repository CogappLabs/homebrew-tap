class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.3/colflow-darwin-arm64.tar.gz"
      sha256 "9513a7757ca6dd1150b73b921ab629c06169d0cca5c14df7d9be019c22866215"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.3/colflow-darwin-amd64.tar.gz"
      sha256 "3d59ca5996460b6912291787682625b9e7f7938ae2a404d23aaea1e1a0eec242"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.3/colflow-linux-arm64.tar.gz"
      sha256 "e66a42523e2b9ac07c8d91d2e5b6fa0ac0d6877d704345b96885793b24ce28a1"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.3/colflow-linux-amd64.tar.gz"
      sha256 "7bf627130ca1c06eb6847af699d163d59bc4e9fefaf12fa1eeb988990d9dd2f1"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
