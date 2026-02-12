cask "voe-monitor" do
  version "1.0.4"
  sha256 "acc861883dff9d0405d8eff7764a829a3ffc1c76be891ff4b9e7d55d587d56e0"

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
