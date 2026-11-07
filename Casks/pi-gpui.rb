cask "pi-gpui" do
  version "0.1.9"
  sha256 "4b0bbfc58ecd9a01e135b622fc09aedf60f4aee231a3a5923686478218deb869"

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
  depends_on macos: ">= :ventura"

  app "Pi GPUI.app"

  zap trash: [
    "~/Library/Application Support/pi-gpui",
  ]
end
