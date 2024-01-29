;热键使用说明 https://www.autoahk.com/help/autohotkey/zh-cn/docs/Hotkeys.htm
;键盘映射列表 https://www.autoahk.com/help/autohotkey/zh-cn/docs/KeyList.htm
;!	Alt
;^	ctrl
;+	Shift
;!+e::Run C:\Program Files\Notepad++\notepad++.exe
;!+p::Run F:\00-jgy\jgy-workspace\ahk\percy.ahk

;my-capslock.ahk必须放在第一个，否则会失效
#Include my-capslock.ahk
#Include autoStrings.ahk
#Include notebookControl.ahk

#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

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

;update 2023-7-21 新增class的封装函数，因部分程序无法通过exe文件
;封装成函数
;函数功能：如果窗口不存在，则启动程序；如果窗口未激活，则激活；如果窗口激活，则最小化窗口
WinConTrolByAhkClass(ClassName, EexName)
{
    if not WinExist("ahk_class" ClassName)
        Run, %EexName%
    Else
    {
        if not WinActive()
            WinActivate
        else
            WinMinimize
    }
    Return
}

!+w::    ; 打开/最小化/激活WPS
ExeName := "C:\Users\frank\AppData\Local\Kingsoft\WPS Office\ksolaunch.exe"
ClassName := "OpusApp"
WinConTrolByAhkClass(ClassName,ExeName)
Return

!+c::
ExeName := "C:\Program Files\Microsoft VS Code\Code.exe"
WinConTrolByExeName(ExeName)
Return

!+d::
ExeName := "C:\Program Files (x86)\Microsoft Office\root\Office16\ONENOTE.EXE"
WinConTrolByExeName(ExeName)
Return

!+x::
ExeName := "C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe"
WinConTrolByExeName(ExeName)
Return

!+e::
ExeName := "C:\Program Files\Notepad--\notepad--.exe"
WinConTrolByExeName(ExeName)
Return

!+z::
ExeName :="C:\Program Files\AurallySound\Song Master.exe"
WinConTrolByExeName(ExeName)
Return

!+a::
ExeName :="C:\Program Files\Billfish\Billfish.exe"
CLassName :="Qt5158QWindowIcon"
WinConTrolByAhkClass(ClassName,ExeName)
Return

!+n::
ExeName :="C:\Program Files (x86)\NeatReader\NeatReader.exe"
WinConTrolByExeName(ExeName)
Return

!+q::
ExeName :="C:\Users\frank\AppData\Local\TotalCMD64\TotalCMD64.exe"
CLassName :="TTOTAL_CMD"
WinConTrolByAhkClass(ClassName,ExeName)
Return

;调试代码
!+b::
ExeName :="C:\Users\percy\AppData\Local\Obsidian\Obsidian.exe"
WinConTrolByExeName(ExeName)
Return