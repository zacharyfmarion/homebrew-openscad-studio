cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "59ff30a51ff7f7d1f1bc82b1cecf3909de676deb6d67b167cf1964c05db3b82e",
         intel: "f3b078484c6640236fb5d69d8a76147765148073e61c2b5c4bf68aebbcacb81b"

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
