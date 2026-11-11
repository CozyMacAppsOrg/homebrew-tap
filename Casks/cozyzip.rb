cask "cozyzip" do
  version "1.0.6"
  sha256 "9a7927bffd6a2a867c441ad9e939e00567c350d81d2cf25a5675254f06b308bd"

  url "https://cozymacapps.com/downloads/cozyzip/CozyZip-#{version}.dmg"
  name "CozyZip"
  desc "Preview, extract and create archives safely"
  homepage "https://cozymacapps.com/cozyzip/"

  livecheck do
    url "https://cozymacapps.com/downloads/cozyzip/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "CozyZip.app"
  binary "#{appdir}/CozyZip.app/Contents/Helpers/cozyzip"

  # The shared group container (HP69CKB5N4.com.cozymacapps.shared) holds the
  # licences of every CozyMacApps app, so it is deliberately not removed here.
  zap trash: [
    "~/Library/Application Support/CozyZip",
    "~/Library/Caches/com.cozymacapps.cozyzip",
    "~/Library/Containers/com.cozymacapps.cozyzip",
    "~/Library/Containers/com.cozymacapps.cozyzip.finder",
    "~/Library/HTTPStorages/com.cozymacapps.cozyzip",
    "~/Library/Preferences/com.cozymacapps.cozyzip.plist",
  ]
end
