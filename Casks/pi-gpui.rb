cask "pi-gpui" do
  version "0.1.13"
  sha256 "28caa6d10f674aadf658c79717a1c9496f360bda8633d063895e371e48a1a77c"

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
