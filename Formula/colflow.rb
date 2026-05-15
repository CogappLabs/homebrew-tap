class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.4/colflow-darwin-arm64.tar.gz"
      sha256 "3d5e3b813daaa09a9a90451af1a24c458d2b6d115f3da8b4361ce949e30a221f"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.4/colflow-darwin-amd64.tar.gz"
      sha256 "b164780438d2e56a03d2c4c57bf8e4c1002411cd3a4995f29711706911e782b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.4/colflow-linux-arm64.tar.gz"
      sha256 "62fddcdf4f04effe01133d00b7743e1344d13dfb2394ab25e64e5a870adf7607"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.4.4/colflow-linux-amd64.tar.gz"
      sha256 "e3765ec139d431de49803b949c842735c2f9c6deceb0f7b3a28cb946ad189ad6"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
