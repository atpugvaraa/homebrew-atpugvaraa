cask "armd" do
  version "0.1.2"
  sha256 "bd3af052fbea6b44af8df74aa2e6624f8b64c1c78fe8a27e8aa514e2fb63c2e5"

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
