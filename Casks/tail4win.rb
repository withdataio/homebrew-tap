cask "tail4win" do
  version "6.1.1"
  sha256 "fb20ada8944d779dbe5d1b3b0faf4b4937f3bb0a97faad32adfc643513107126"

  url "https://www.withdata.com/down/Tail4win-#{version}.pkg"
  name "Tail4win"
  desc "Windows port of the UNIX tail -f command"
  homepage "https://www.withdata.com/tail4win/"

  livecheck do
    url "https://www.withdata.com/tail4win/download.html"
    regex(/Tail4win version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "Tail4win-#{version}.pkg"

  uninstall pkgutil: "com.withdata.Tail4win"
end
