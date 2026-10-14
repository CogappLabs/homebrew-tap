class Colflow < Formula
  desc "TUI for Dagster collection-flow pipelines"
  homepage "https://github.com/CogappLabs/colflow-cli-react"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.9.0/colflow-darwin-arm64.tar.gz"
      sha256 "f37156c6f9ddd610268668f4126dd73f80e3cfdb54819c47c03face1652244b8"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.9.0/colflow-darwin-amd64.tar.gz"
      sha256 "70addf6e66195466e312dc6877122d2e54c3e1f5c097afa9a3f292b705856fd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.9.0/colflow-linux-arm64.tar.gz"
      sha256 "3d602190462b3c11e071ae97d5bbde55f6386a05e87dd1027784f61c431aa623"
    else
      url "https://github.com/CogappLabs/colflow-cli-react/releases/download/v0.9.0/colflow-linux-amd64.tar.gz"
      sha256 "b792842eba2972d023174130831fe8398b6410a7204bf5fc17079d4d03ccfbb1"
    end
  end

  def install
    bin.install "colflow"
  end

  test do
    system "#{bin}/colflow", "--help"
  end
end
