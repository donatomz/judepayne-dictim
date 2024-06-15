if (Test-Path -Path 'clojure.msi' -PathType Leaf) {
  Write-Host 'downloading Clojure..'
  Invoke-WebRequest 'https://github.com/casselc/clj-msi/releases/download/v1.11.3.1463/clojure-1.11.3.1463.msi' -OutFile 'clojure.msi'
} else {
  Write-Host 'Clojure available from cache'
}

if (Test-Path -Path 'graalvm') {
  Write-Host 'downloading graalvm..'
  Invoke-WebRequest 'https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.0/graalvm-ce-java17-windows-amd64-22.3.0.zip'  -OutFile 'graalvm.zip'
  Expand-Archive graalvm.zip graalvm
}

if (Test-Path -Path 'bb.zip' -PathType Leaf) {
  Write-Host 'downloading Babashka..'
  Invoke-WebRequest 'https://github.com/borkdude/babashka/releases/download/v1.0.169/babashka-1.0.169-windows-amd64.zip' -OutFile 'bb.zip'
}
