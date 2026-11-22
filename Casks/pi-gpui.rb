cask "pi-gpui" do
  version "0.2.9"
  sha256 "47734288d5e555858ee2495b937c8b4b96761dc7342307a1e3b2148b9f0fd5d3"

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
