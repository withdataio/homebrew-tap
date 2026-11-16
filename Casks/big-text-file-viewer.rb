cask "big-text-file-viewer" do
  version "3.2.3"
  sha256 "a9fe813a3398ab0e592a27fc7623ab162131416f815b15fc9a919bd2a8fb3320"

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
