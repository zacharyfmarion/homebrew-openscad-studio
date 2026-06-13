cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "26baacda638caa2f87478e4ce3e8819fc10a5d466c1a2a983204abaf8f03a826",
         intel: "450b7bd0c940d4256eee5e8351c83d3551e8012c161da1b7baf03b843e257720"

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
