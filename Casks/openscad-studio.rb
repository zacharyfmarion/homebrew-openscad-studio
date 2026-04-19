cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "4d829263883c851c5ca38a2561b8a0b98cbeaed33b8bcd8104e3d464afe3fbf7",
         intel: "4f1966b79c6b06ef7ae6fcf7bf530b65c718182690d9ae3fe4b4430ab6f2b1f2"

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
