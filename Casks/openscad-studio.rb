cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "218aaeab561f95ec5870223dba5f397a180e41e77c1d3b8fded13738097d3d35",
         intel: "dcf509a1879b03f47c70a4906f3c68ccf7098e2426921d26462c0af12236cd64"

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
