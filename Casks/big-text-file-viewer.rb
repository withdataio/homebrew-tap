cask "big-text-file-viewer" do
  version "3.2.1"
  sha256 "def6eb0f61dc85c4be1b804c2ecfef92207d124b03b052e51fb03ea404d9c31c"

  url "https://www.withdata.com/down/BigTextFileViewer-#{version}.pkg"
  name "BigTextFileViewer"
  desc "Viewer for extremely large text files"
  homepage "https://www.withdata.com/big-text-file-viewer/"

  livecheck do
    url "https://www.withdata.com/big-text-file-viewer/download.html"
    regex(/BigTextFileViewer version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "BigTextFileViewer-#{version}.pkg"

  uninstall pkgutil: "com.withdata.BigTextFileViewer"

  zap trash: "~/.config/BigTextFileViewer"
end
