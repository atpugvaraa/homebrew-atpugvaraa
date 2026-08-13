cask "armd" do
  version "0.1.1"
  sha256 "525975215c8e7e609cca5c58e7b074734ec5c987268f73b9b6da2d5cbeede2db"

  url "https://github.com/atpugvaraa/ARMd/releases/download/v#{version}/ARMd-#{version}.zip"
  name "ARMd"
  desc "Write and run Keil-style ARM7 assembly on Apple Silicon"
  homepage "https://github.com/atpugvaraa/ARMd"

  # Bare symbol, not ">= :sequoia": the string-comparison form is deprecated and
  # Homebrew warns on every install. A bare symbol already means "at least".
  depends_on macos: :sequoia

  app "ARMd.app"

  zap trash: "~/Library/Preferences/com.aaravgupta.ARMd.plist"
end
