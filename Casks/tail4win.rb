cask "tail4win" do
  version "6.1.2"
  sha256 "3bd854e8b9d2b9c19f5f7cd3422cbafb2f11592b431db14021d07fd5575c415b"

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
