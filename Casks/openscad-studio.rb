cask "openscad-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.1"
  sha256 arm:   "d5f127bdf8736e9fb39f01fe31e1ecdf0154b416803021e7c47240e708cb2a3e",
         intel: "fcb6c3a96eed1501f96d73b0a0877fd7b420c68dcb159327fed4de781e3789c0"

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
