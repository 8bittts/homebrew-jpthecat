cask "jpthecat" do
  version "1.108"
  sha256 "a167e6e36299a09b7a005516116605e7fd21f27a5d4540562f78e77c65d5834b"

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
