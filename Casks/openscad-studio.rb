cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "ee365af647fd647612140ba79860681536496c0552ea92c33b95a8fc0805a24a",
         intel: "1241dc0156c896d3991b372bffee794073c9ba0e1475ed3ddae9d01d2dcd80b9"

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
