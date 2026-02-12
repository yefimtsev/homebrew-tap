cask "voe-monitor" do
  version "1.0.3"
  sha256 "166e287a75e2fe40269405cb06c6013a4770772fbbe3642ffe9d2582068f63be"

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
