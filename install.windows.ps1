# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/LearnWithLlew/haskell.starterproject/master/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#


iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install haskell-dev

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/LearnWithLlew/haskell.starterproject.git C:\Code\haskell.starterproject
cd C:\Code\haskell.starterproject

# Run starting haskell stuff
cabal update
cabal install --lib HUnit
run_tests.bat

# Done
cls
echo "Done!"
