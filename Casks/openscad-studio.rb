cask "openscad-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "2accf6da8a725c1449c0d330f7cc5d385a1848b37ff6aea8a38f59fc68339019",
         intel: "d2bbdbbb64c991c3d6fa7125c9153848a4e16715de1cd579018a3dd9dea6a41d"

  url "https://github.com/zacharyfmarion/openscad-studio/releases/download/v#{version}/OpenSCAD.Studio_#{version}_#{arch}.dmg",
      verified: "github.com/zacharyfmarion/"

  name "OpenSCAD Studio"
  desc "Modern OpenSCAD editor with live preview and AI copilot"
  homepage "https://github.com/zacharyfmarion/openscad-studio"

  depends_on cask: "openscad"

  app "OpenSCAD Studio.app"

  # Explicitly remove quarantine attribute to bypass Gatekeeper for unsigned app
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/OpenSCAD Studio.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.openscad.studio",
    "~/Library/Caches/com.openscad.studio",
    "~/Library/Preferences/com.openscad.studio.plist",
  ]
end
