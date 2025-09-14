cask "videopaper" do
  version :latest
  sha256 :no_check

  url "https://github.com/Mcrich23/VideoPaper/releases/latest/download/VideoPaper.zip"
  name "VideoPaper"
  desc "Set videos as your wallpaper"
  homepage "https://github.com/Mcrich23/VideoPaper"

  app "VideoPaper.app"

  zap trash: [
    "~/Library/Preferences/com.mcrich23.VideoPaper.plist",
    "~/Library/Saved Application State/com.mcrich23.VideoPaper.savedState",
    "~/Library/Application Support/VideoPaper",
  ]
end