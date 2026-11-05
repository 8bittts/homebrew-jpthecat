cask "jpthecat" do
  version "1.144"
  sha256 "a5b788bca2b573d7cea8e4997ec4082766ff93509ec8e8473069724f373fbda7"

  url "https://api.jpthecat.com/storage/v1/object/public/releases/JPtheCat-#{version}.dmg"
  name "JP the Cat"
  desc "Menu bar AI coding cost meter"
  homepage "https://jpthecat.com/"

  livecheck do
    url "https://jpthecat.com/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "JPtheCat.app"

  zap trash: [
    "~/Library/Application Support/com.8bittts.jpthecat",
    "~/Library/Application Support/JPtheCat",
    "~/Library/Caches/com.8bittts.jpthecat",
    "~/Library/Caches/com.8bittts.jpthecat.ShipIt",
    "~/Library/Group Containers/GRNGR33Z8A.com.8bittts.jpthecat",
    "~/Library/HTTPStorages/com.8bittts.jpthecat",
    "~/Library/Preferences/com.8bittts.jpthecat.plist",
    "~/Library/Saved Application State/com.8bittts.jpthecat.savedState",
  ]
end
