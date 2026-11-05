cask "runelight" do
  version "0.1.0"
  sha256 "90f2c2b2614d4c47d44f5ee0ca746aad52294841d13f9be7e641231ec3da3c77"

  url "https://github.com/sutekimeppou/runelight/releases/download/v#{version}/Runelight-#{version}-arm64.zip"
  name "Runelight"
  desc "Minimal app launcher with fuzzy search and quicklinks"
  homepage "https://github.com/sutekimeppou/runelight"

  depends_on arch: :arm64
  app "Runelight.app"
end
