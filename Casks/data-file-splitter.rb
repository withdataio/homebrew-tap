cask "data-file-splitter" do
  version "2.5.1"
  sha256 "b0792b1e2cfe6579be42a1d69bbccfae54858ca204784dd78bee3bfb9bbb3a14"

  url "https://www.withdata.com/down/DataFileSplitter-#{version}.pkg"
  name "DataFileSplitter"
  desc "Split big data files into smaller files"
  homepage "https://www.withdata.com/data-file-splitter/"

  livecheck do
    url "https://www.withdata.com/data-file-splitter/download.html"
    regex(/DataFileSplitter version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "DataFileSplitter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.DataFileSplitter"
end
