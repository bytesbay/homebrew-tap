cask "pi-gpui" do
  version "0.2.12"
  sha256 "089d01a9bfa0a0e3c9e2e754350decb991bed814adc2226b96d1f04b18678d0d"

  url "https://github.com/bytesbay/pi-gpui/releases/download/v#{version}/Pi-GPUI-#{version}-aarch64.zip"
  name "Pi GPUI"
  desc "Native app for the pi coding agent, written in Rust with GPUI"
  homepage "https://pi-gpui.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Pi GPUI.app"

  zap trash: "~/Library/Application Support/pi-gpui"
end
