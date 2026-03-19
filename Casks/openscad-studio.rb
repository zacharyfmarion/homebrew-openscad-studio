cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "32c5f3deefc9176196428ac7bb864d4b4d95b474f9d1f49e3602c01c0875c2fe",
         intel: "6c178c8502b85fbae2b0b206c39110df7e75e1177141474cf45a802b24e49477"

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
