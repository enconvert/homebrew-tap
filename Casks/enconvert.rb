cask "enconvert" do
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/enconvert/cli/releases/download/v#{version}/enconvert_#{version}_darwin_arm64.tar.gz"
      sha256 "3ba3e2a97c3ab72467582866b565fb3a7ac0de4f9e0ac56facf22109891914d9"
    end
    on_intel do
      url "https://github.com/enconvert/cli/releases/download/v#{version}/enconvert_#{version}_darwin_x64.tar.gz"
      sha256 "b5ea5adc437823fd5781c953b2cccb940cf254eac1991c579434f933388c60b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/enconvert/cli/releases/download/v#{version}/enconvert_#{version}_linux_arm64.tar.gz"
      sha256 "79043c48a209f0c931293774898a7ec3afb9ac05e0be3de141b415ef8e17bf0b"
    end
    on_intel do
      url "https://github.com/enconvert/cli/releases/download/v#{version}/enconvert_#{version}_linux_x64.tar.gz"
      sha256 "d0f1fe522ea5580962d745b3f8b883b0d57d65a113ddb026d661c630b0d22629"
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
