cask "runelight" do
  version "0.1.1"
  sha256 "e6b523ca8e2ce1b3567576c3195df462d55b9d4481a53dc57c3593b73f02b5b1"

  url "https://github.com/sutekimeppou/runelight/releases/download/v#{version}/Runelight-#{version}-arm64.zip"
  name "Runelight"
  desc "Minimal app launcher with fuzzy search and quicklinks"
  homepage "https://github.com/sutekimeppou/runelight"

  depends_on arch: :arm64
  app "Runelight.app"
end
