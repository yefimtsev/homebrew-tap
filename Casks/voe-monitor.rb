cask "voe-monitor" do
  version "1.0.0"
  sha256 "3a521132cc4290f05e0486aa51324497d3e6630d9471d5ab4ee8e398d02c4054"

  url "https://github.com/yefimtsev/voe-monitor/releases/download/v#{version}/VOEMonitor.zip"
  name "VOE Monitor"
  desc "Power outage schedule for Vinnytsia region in your menubar"
  homepage "https://github.com/yefimtsev/voe-monitor"

  depends_on macos: ">= :tahoe"

  app "VOE Monitor.app"

  zap trash: [
    "~/Library/Application Support/VOEMonitor",
    "~/Library/Preferences/com.github.yefimtsev.VOEMonitor.plist"
  ]
end
