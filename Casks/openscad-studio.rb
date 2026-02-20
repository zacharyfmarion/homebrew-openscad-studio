cask "openscad-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.7.1"
  sha256 arm:   "a9bea79f2727b610cd08cd8cd3a8e6005c65b84918a5a86d948b91c3d0f85972",
         intel: "702a0082066b6850134a33abb2625323f78b43ff50ed443809dba18f405fb650"

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
