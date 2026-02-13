cask "voe-monitor" do
  version "1.1.0"
  sha256 "e2d1bc5438915e9088e122fd215f39d7ecd75b7010aea7a1aca94bd52872aa81"

  url "https://github.com/yefimtsev/voe-monitor/releases/download/v#{version}/VOEMonitor.dmg"
  name "VOE Monitor"
  desc "Power outage schedule for Vinnytsia region in your menubar"
  homepage "https://github.com/yefimtsev/voe-monitor"

  depends_on macos: ">= :tahoe"

  app "VOE Monitor.app"

  zap trash: [
    "~/Library/Application Support/VOEMonitor",
    "~/Library/Preferences/com.github.yefimtsev.VOEMonitor.plist",
  ]
end
