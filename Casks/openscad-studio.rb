cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "7d48971ee99012d78e96eb543ad9089bb8fb3ed17c2f9fb42a00214b9d1ca081",
         intel: "af3380cf145f6b73c9f5d02578b63a5cb6b6e3fc561e2cfad2ee47abb126b65d"

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
