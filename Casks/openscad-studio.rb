cask "openscad-studio" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "630c42fa01873784b7b538609f2b726c496b03a17c6d76d900393b0466aa50f9",
         intel: "c64a14496c2126e6d86ac7986b2e2cf3b9565bac4ac8cae38818ebf9818aa9ba"

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
