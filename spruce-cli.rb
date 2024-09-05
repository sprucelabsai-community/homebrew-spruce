class SpruceCli < Formula
    require "language/node"
    desc "The SpruceCLI is a command line tool for working with Spruce Platform."
    homepage "https://github.com/sprucelabsai-community/spruce-cli-workspace"
    license "MIT"
  
    livecheck do
      url "https://registry.npmjs.org/@sprucelabs/spruce-cli/latest"
      regex(/"version":\s*"?(\d+(?:\.\d+)+)"?/i)
    end
  
    def install
      system "npm", "install", "-g", "@sprucelabs/spruce-cli@latest"
      bin.install_symlink Dir["#{HOMEBREW_PREFIX}/lib/node_modules/@sprucelabs/spruce-cli/bin/*"]
    end
  
    test do
      system "#{bin}/spruce", "--version"
    end
  end