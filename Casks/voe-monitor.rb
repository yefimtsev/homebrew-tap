cask "voe-monitor" do
  version "1.2.0"
  sha256 "38919df8acb071f30460ce155770fea6257edbf9fa5dfb3a42f04a495705c5a2"

  url "https://github.com/yefimtsev/voe-monitor/releases/download/v#{version}/VOEMonitor.dmg"
  name "VOE Monitor"
  desc "Power outage schedule for Vinnytsia region in your menubar"
  homepage "https://github.com/yefimtsev/voe-monitor"

  depends_on macos: ">= :sequoia"

  app "VOE Monitor.app"

  zap trash: [
    "~/Library/Application Support/VOEMonitor",
    "~/Library/Preferences/com.github.yefimtsev.VOEMonitor.plist",
  ]
end
