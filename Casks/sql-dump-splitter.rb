cask "sql-dump-splitter" do
  version "1.4.1"
  sha256 "e4b38ae21d2a8d034ce0daff5f24dfc98a11c6aafe6d11d6bec1f932fdf359f8"

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
