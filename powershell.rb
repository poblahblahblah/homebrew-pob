cask 'powershell' do
  version '6.0.0-alpha.9'
  sha256 :no_check

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}.pkg"
  name 'PowerShell'
  homepage 'https://github.com/PowerShell/PowerShell'
  license :mit

  pkg "powershell-#{version}.pkg"

end
