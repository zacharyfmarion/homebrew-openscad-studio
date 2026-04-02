cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "045cea5e675dd8ad007c0217704e682f07f817b7e39002910343e5144228c8b6",
         intel: "22e1453534885f48f4ab3037502f29831e81c6c87986db9bc74fb8778adaaa5c"

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
