cask "pi-gpui" do
  version "0.2.3"
  sha256 "7e20d7fdaa123197f1beae48574b8f4debac331dbd8c9dc7472c1db4447a844c"

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
