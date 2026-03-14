cask "openscad-studio" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.9.0"
  sha256 arm:   "9798472abfb005d152d4c289ad4312f9841f9a64ae12533f00d1fe2b55053556",
         intel: "1cdf99887559b74e77247f60c40f2826ba2b90da0c4650366e0d56e563d4d5d4"

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
