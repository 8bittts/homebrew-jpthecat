cask "jpthecat" do
  version "1.050"
  sha256 "afb165415617057343f746ab0f206ce0daabd8f66e27fa179d648152f4e917a6"

  url "https://api.jpthecat.com/storage/v1/object/public/releases/JPtheCat-#{version}.dmg"
  name "JPtheCat"
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
