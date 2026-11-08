
cask "ctfhud" do
  version "1.9.1"
  sha256 "27f818551440b3cd28f1b1aebafe6547def6b46ddd04563145e311df27ffb30c"

  url "https://github.com/chujiamo/ctfhud/releases/download/v#{version}/CTFHUD.v#{version}.Mac.Arm.zip"

  name "CTF HUD"
  desc "Native macOS HUD for CTF competitions"
  homepage "https://github.com/chujiamo/ctfhud"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "CTFHUD.app"

  caveats <<~EOS
    CTFHUD is not notarized by Apple.
    macOS may block the first launch.

    To allow the app, open System Settings >
    Privacy & Security > Open Anyway.
  EOS
end

