cask "enconvert" do
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/enconvert/cli/releases/download/v#{version}/enconvert_#{version}_darwin_arm64.tar.gz"
      sha256 "c8c38f42b18643f6a4a2aa3828dfdea6a323fea37a7f5864129a115171701bfd"
    end
    on_intel do
      url "https://github.com/enconvert/cli/releases/download/v#{version}/enconvert_#{version}_darwin_x64.tar.gz"
      sha256 "481df13ece03a2e5c790a88bbfd53451d09f9dc74c7b2545fec3960072d0c12b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/enconvert/cli/releases/download/v#{version}/enconvert_#{version}_linux_arm64.tar.gz"
      sha256 "b45b686878f3dd74eefd97f539973f294304b08fbc0025834aa15e1014a457bf"
    end
    on_intel do
      url "https://github.com/enconvert/cli/releases/download/v#{version}/enconvert_#{version}_linux_x64.tar.gz"
      sha256 "799ec9c83c5faea3eeef44eda7ae4564c4ece8b283eaf937a2579079fd2a0c98"
    end
  end

  name "enconvert"
  desc "Official Enconvert CLI — convert files, render URLs, and extract web data"
  homepage "https://enconvert.com/cli"

  binary "enconvert"

  zap trash: [
    "~/.cache/enconvert",
    "~/.config/enconvert",
    "~/.enconvert",
    "~/.local/state/enconvert",
  ]
end
