cask "data-file-splitter" do
  version "2.6.3"
  sha256 "fcddbf83384da47ca71cf704a77118629b8f7b691d04ee7a23f89b1600ed1002"

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
