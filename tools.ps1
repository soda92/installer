# scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# basic tools

scoop install git
scoop bucket add extras
scoop install gh neovim notepadplusplus greenshot ripgrep wget 7zip fzf Noto-NF posh-git
# languages
scoop install python ruby rustup

# VS
scoop bucket add crystal-preview https://github.com/neatorobito/scoop-crystal
scoop install vs_2022_cpp_build_tools

# rust tools
cargo install bat eza

# GUI tools
scoop install krita digiKam nomacs autohotkey gpg4win github

# powershell config
gh auth login
mkdir C:\src
Set-Location C:\src

gh repo clone pwshprofile
Push-Location pwshprofile
cp profile.ps1 $PROFILE
Pop-Location

# windows terminal
git clone https://gist.github.com/b97349fc9130906e170887681980ff88.git wt-settings
Push-Location wt-settings
cp windows-terminal-settings.json C:\Users\SodaCris\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.sjon
Pop-Location

# git config
git clone https://gist.github.com/88291b9bd378b0b5871fb3e8b3278c7f.git windows-git-config
Push-Location windows-git-config
cp windows.gitconfig $Env:USERPROFILE/.gitconfig
Pop-Location

# SuRun
Push-Location $ENv:USERPROFILE/Downloads
wget https://github.com/user-attachments/files/18216881/artifact.zip
7z x artifact.zip
.\InstallSuRun.exe
Pop-Location

# json file assoc
$np=(gcm notepad++.exe).source
surun cmd /C "assoc .json=jsonfile"
surun cmd /C "ftype jsonfile=$np %1"

# Testing
# download VMWare from: https://blogs.vmware.com/workstation/2024/05/vmware-workstation-pro-now-available-free-for-personal-use.html
# Use the address: ADD: No. 5 Danling St, Haidian District, Beijing, 100080, PRC.

