cask "openscad-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "4ba367e43203d6b873e469e5190d39a5935f172632cef980670eec16f90a4546",
         intel: "32331a05fbc20aa2408bcb05959c252fd7c5566fd696ed0c03b1e0005ec7e50d"

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
