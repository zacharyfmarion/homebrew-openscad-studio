cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "6de15521d77cb7076c22960e56c805beaab00f88ea0246981b9b086c6d11c920",
         intel: "667c425149447b20d3d9eb0c7791dfaa9931006d10b8cb2404395dd37fdbaefc"

  url "https://github.com/zacharyfmarion/openscad-studio/releases/download/v#{version}/OpenSCAD.Studio_#{version}_#{arch}.dmg",
      verified: "github.com/zacharyfmarion/"

  name "OpenSCAD Studio"
  desc "Modern OpenSCAD editor with live preview and AI copilot"
  homepage "https://github.com/zacharyfmarion/openscad-studio"

  depends_on cask: "openscad"

  app "OpenSCAD Studio.app"

  zap trash: [
    "~/Library/Application Support/com.openscad.studio",
    "~/Library/Caches/com.openscad.studio",
    "~/Library/Preferences/com.openscad.studio.plist",
  ]
end
