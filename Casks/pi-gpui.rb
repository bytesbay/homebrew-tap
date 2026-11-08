cask "pi-gpui" do
  version "0.1.12"
  sha256 "452a9b3dada62fad701dafdf2b3cebda47183dd11aa522fe7399b36518ef8d3b"

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
