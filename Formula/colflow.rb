class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.7.0/colflow-darwin-arm64.tar.gz"
      sha256 "8d2331234f47f199b19e88c8eeb59970c91775c159d8b6fdc5b364d525ac9c91"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.7.0/colflow-darwin-amd64.tar.gz"
      sha256 "f5c161f1ffd8de573f15c2ab38bd56e76d92c4d06b905410a24af707abfa6182"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.7.0/colflow-linux-arm64.tar.gz"
      sha256 "2b0451f7a05721f6bb9b3096a4c06abbe66a3e496cf7544c8872fda782a3ad27"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.7.0/colflow-linux-amd64.tar.gz"
      sha256 "13ae5f1ba3c7d7672394d9476262de0492bfc65f6f13ae69340974f4961b4660"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
