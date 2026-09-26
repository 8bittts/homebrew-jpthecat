cask "jpthecat" do
  version "1.130"
  sha256 "d4b581918d19c69d018f9b607d243cab5ec30cd4fc93c3aee9e3d2df2ff6a1aa"

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
