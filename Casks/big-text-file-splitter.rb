cask "big-text-file-splitter" do
  version "4.4.1"
  sha256 "f456cb00930eeed2b1bf2644f9ff23d504bbebe895e276fd46573568ca87f5ae"

  url "https://www.withdata.com/down/BigTextFileSplitter-#{version}.pkg"
  name "BigTextFileSplitter"
  desc "Split large text files into smaller files"
  homepage "https://www.withdata.com/big-text-file-splitter/"

  livecheck do
    url "https://www.withdata.com/big-text-file-splitter/download.html"
    regex(/BigTextFileSplitter version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "BigTextFileSplitter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.BigTextFileSplitter"
end
