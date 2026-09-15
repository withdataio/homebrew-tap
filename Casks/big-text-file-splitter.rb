cask "big-text-file-splitter" do
  version "4.3.1"
  sha256 "f24bb16ebfd2fc04f0bf39c7b2307f140f37e25345d521932c2f9a96476162db"

  url "https://www.withdata.com/down/BigTextFileSplitter-#{version}.pkg"
  name "BigTextFileSplitter"
  desc "Split large text files into smaller files"
  homepage "https://www.withdata.com/big-text-file-splitter/"

  livecheck do
    url "https://www.withdata.com/big-text-file-splitter/download.html"
    regex(/BigTextFileSplitter version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "BigTextFileSplitter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.BigTextFileSplitter"
end
