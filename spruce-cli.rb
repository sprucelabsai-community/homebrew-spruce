class SpruceCli < Formula
  require "language/node"
  desc "The SpruceCLI is a command line tool for working with Spruce Platform."
  homepage "https://github.com/sprucelabsai-community/spruce-cli-workspace"
  url "https://registry.npmjs.org/@sprucelabs/spruce-cli/-/spruce-cli-21.0.39.tgz"
  version "21.0.39"
  sha256 "5602e4abbf3117f04c4a63241e2fa41790ea142fa284e85c3d897a74526be5a0"
  license "MIT"

  depends_on "node"
  depends_on "yarn"

  def install
    system "yarn", "install", "--production"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/spruce", "--version"
  end
end