;#	Win (Windows 徽标键). 在 v1.0.48.01+, 对于 Windows Vista 及以上版本, 包含 Windows 键的热键 (例如 #a) 会等待 Windows 键被释放后才发送任何包含 "L" 键击的文本. 这样避免了这种热键中的 Send 锁定 PC。这种行为适用于除 SendPlay (这里不需要) 和 盲从模式 外的所有发送模式.
;!	Alt
;^	ctrl
;+	Shift
;!+e::Run C:\Program Files\Notepad++\notepad++.exe
;!+p::Run F:\00-jgy\jgy-workspace\ahk\percy.ahk

;my-capslock.ahk必须放在第一个，否则会失效
#Include my-capslock.ahk
#Include autoStrings.ahk

!+r::Reload    ; reload 当前脚本

;update 2022-7-3 优化winactive函数，改为官方推荐函数
;封装成函数
;函数功能：如果窗口不存在，则启动程序；如果窗口未激活，则激活；如果窗口激活，则最小化窗口
WinConTrolByExeName(ExeName)
{
    if not WinExist("ahk_exe" ExeName)
        Run, %ExeName%
    Else
    {
        if not WinActive()
            WinActivate
        else
            WinMinimize
    }
    Return
}

!+w::    ; 打开/最小化/激活TC
ExeName := "C:\Users\percy\AppData\Local\TotalCMD64\Totalcmd64.exe"
WinConTrolByExeName(ExeName)
Return

!+c::
ExeName := "C:\Users\percy\AppData\Local\Programs\Microsoft VS Code\Code.exe"
WinConTrolByExeName(ExeName)
Return

!+d::
ExeName := "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
WinConTrolByExeName(ExeName)
Return

!+x::
ExeName := "C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe"
WinConTrolByExeName(ExeName)
Return

!+e::
ExeName := "C:\Program Files\Notepad++\notepad++.exe"
WinConTrolByExeName(ExeName)
Return

!+z::
ExeName :="C:\Users\percy\AppData\Local\Obsidian\Obsidian.exe"
WinConTrolByExeName(ExeName)
Return

;调试代码
!+b::
ExeName :="C:\Users\percy\AppData\Local\Obsidian\Obsidian.exe"
WinConTrolByExeName(ExeName)
Return