# backup-picgo.ps1

# 复制文件到当前目录（自动处理路径空格）
Copy-Item -Path "$env:APPDATA\picgo\Cookies" -Destination . -ErrorAction SilentlyContinue
Copy-Item -Path "$env:APPDATA\picgo\picgo.db" -Destination .
Copy-Item -Path "$env:APPDATA\picgo\data.json" -Destination .
Copy-Item -Path "$env:APPDATA\picgo\package.json" -Destination .

# 添加验证
if (Test-Path ".\Cookies") {
    Write-Host "备份成功！" -ForegroundColor Green
} else {
    Write-Host "警告：Cookies文件可能未备份成功" -ForegroundColor Yellow
}