cask "openscad-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.9.0"
  sha256 arm:   "12d0483feff6d89368663b12841271d16bfc612d3cf31f641ce7e51b4e0cd15f",
         intel: "cd2367b71d8c5ecad7f092a0342e3ae00a72743d89b622e938139c2d82142ca7"

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
