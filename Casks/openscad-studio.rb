cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "9f52a8515b9bef7b5c8340ffe3bf20be4283fda8e899b722c97b4382a5ec624b",
         intel: "73a15b5ba1b80c2c16cde7e03b4d63a661e5648ac8acdce5cc7a613a8d20396d"

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
