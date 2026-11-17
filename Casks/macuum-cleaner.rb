cask "macuum-cleaner" do
  version "1.0.0"
  sha256 "c6282af37ee594582125eab36df5c31c8a6704b97a8fa94eb4cfc2044fff6cd8"

  url "https://github.com/git-maniam/Macuum-Cleaner/releases/download/v#{version}/Macuum-Cleaner-v#{version}.dmg"
  name "Macuum Cleaner"
  desc "Safe, transparent disk cleaner and app uninstaller"
  homepage "https://github.com/git-maniam/Macuum-Cleaner"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Macuum Cleaner.app"

  zap trash: [
    "~/Library/Application Support/Macuum Cleaner",
    "~/Library/Caches/com.macuum.cleaner",
    "~/Library/LaunchAgents/com.macuum.cleaner.scheduled-scan.plist",
    "~/Library/Preferences/com.macuum.cleaner.plist",
  ]
end
