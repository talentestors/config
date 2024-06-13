# PSVersion=5.1.22621.2428

Invoke-Expression (&starship init powershell)

Import-Module -Name Terminal-Icons
 
Import-Module PSReadLine
 
#快捷键设置

Invoke-Expression (& { (lua $HOME/z.lua/z.lua --init powershell once enhanced) -join "`n" })

# 设置预测文本来源为历史记录
Set-PSReadLineOption -PredictionSource History
 
# 每次回溯输入历史，光标定位于输入内容末尾
Set-PSReadLineOption -HistorySearchCursorMovesToEnd

# 设置 Tab 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete
 
# 设置 Ctrl+d 为退出 PowerShell
Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit
 
# 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
 
# 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
 
# 设置向下键为前向搜索历史纪录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\scoop-completion"
Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\scoop-completion" -ErrorAction SilentlyContinue

Invoke-Expression (&scoop-search --hook)

# Alias

Function power_off{
    param (
        [int]$time
    )
    shutdown -s -t $time
}

Set-Alias -Name poweroff -Value power_off

Function re_boot{
    param (
        [int]$time
    )
    shutdown -r -t $time
}

Set-Alias -Name reboot -Value re_boot

Function linux_ll{ls | Format-Wide -Column 5 -Property Name}

Set-Alias -Name ll -Value linux_ll

Function lforce{Get-ChildItem -Force}

Set-Alias -Name lf -Value lforce

Set-Alias -Name vim -Value nvim