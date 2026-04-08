cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "61aa380ad2b9abf3078cf199ea0b6bacabd7fd885a252e566e5f93e7f7f16cb7",
         intel: "03c307ca91e5ee737b38fe8fea313600525c07e5d3e99e1aa43e70434330bc82"

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
