cask "runelight" do
  version "0.1.2"
  sha256 "0d4c0cf1b23392ffed67d9474cffde1253ae348433608fa94e0a71381c449395"

  url "https://github.com/sutekimeppou/runelight/releases/download/v#{version}/Runelight-#{version}-arm64.zip"
  name "Runelight"
  desc "Minimal app launcher with fuzzy search and quicklinks"
  homepage "https://github.com/sutekimeppou/runelight"

  depends_on arch: :arm64
  app "Runelight.app"
end
