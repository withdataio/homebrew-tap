cask "tail4win" do
  version "6.0.1"
  sha256 "0733e5ad41ca205e5b84b2b11e9a79fd5f7000d7f28a6b6e7a00780b18f476a6"

  url "https://www.withdata.com/down/Tail4win-#{version}.pkg"
  name "Tail4win"
  desc "Windows port of the UNIX tail -f command"
  homepage "https://www.withdata.com/tail4win/"

  livecheck do
    url "https://www.withdata.com/tail4win/download.html"
    regex(/Tail4win version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "Tail4win-#{version}.pkg"

  uninstall pkgutil: "com.withdata.Tail4win"
end
