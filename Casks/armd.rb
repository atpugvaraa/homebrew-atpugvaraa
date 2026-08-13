cask "armd" do
  version "0.1.0"
  sha256 "bdab13d4e4f224dbdc500d69874576eca30b9e17a5e086d51c405d2f3e828688"

  url "https://github.com/atpugvaraa/ARMd/releases/download/v#{version}/ARMd-#{version}.zip"
  name "ARMd"
  desc "Write and run Keil-style ARM7 assembly on Apple Silicon"
  homepage "https://github.com/atpugvaraa/ARMd"

  depends_on macos: ">= :sequoia"

  app "ARMd.app"

  zap trash: "~/Library/Preferences/com.aaravgupta.ARMd.plist"
end
