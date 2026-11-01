cask "data-file-splitter" do
  version "2.6.1"
  sha256 "54be66c7bb2d7985083b44c284028f5f3d0d1125ae00b45a2c95bcef1d5dc70f"

  url "https://www.withdata.com/down/DataFileSplitter-#{version}.pkg"
  name "DataFileSplitter"
  desc "Split big data files into smaller files"
  homepage "https://www.withdata.com/data-file-splitter/"

  livecheck do
    url "https://www.withdata.com/data-file-splitter/download.html"
    regex(/DataFileSplitter version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "DataFileSplitter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DataFileSplitter"
end
