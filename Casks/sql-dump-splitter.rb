cask "sql-dump-splitter" do
  version "1.5.1"
  sha256 "bc698c1a032b7ea710dc040b23c38ab5b6d91807bf4b39dbf74be62247dc7d62"

  url "https://www.withdata.com/down/SQLDumpSplitter-#{version}.pkg"
  name "SQLDumpSplitter"
  desc "Split big SQL dump files into smaller files"
  homepage "https://www.withdata.com/sql-dump-splitter/"

  livecheck do
    url "https://www.withdata.com/sql-dump-splitter/download.html"
    regex(/SQLDumpSplitter version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  pkg "SQLDumpSplitter-#{version}.pkg"

  uninstall pkgutil: "com.withdata.SQLDumpSplitter"
end
