cask "tail4win" do
  version "6.1.3"
  sha256 "d6ebfe86152b783958484541341e8f17d2237283aae0b185233f5bd5ec94bbeb"

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
