cask "voe-monitor" do
  version "1.0.2"
  sha256 "7ad6df7cb84d0809e210cec3d11ac6a84129ad5e3441c3a2c94769f417062851"

  url "https://github.com/yefimtsev/voe-monitor/releases/download/v#{version}/VOEMonitor.zip"
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
