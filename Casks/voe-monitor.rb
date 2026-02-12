cask "voe-monitor" do
  version "1.0.1"
  sha256 "7f903cafcc9b67979e4e7c85dff691d18f8ecdd768c48a6de90ddff501798dc1"

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
