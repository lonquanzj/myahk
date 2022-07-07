/* #+s::    ; 打开/最小化/激活 Everything
 * EverythingExe := "C:\Users\lonqu\AppData\Local\TotalCMD64\Tools\Everything.exe"
 * IfWinActive, ahk_class EVERYTHING ; 窗口当前活跃，关闭（隐藏到后台了）。
 * {
 *     WinMinimize
 *     ;MsgBox,,窗口当前活跃并隐藏
 *     Return
 * }
 * DetectHiddenWindows, On
 * IfWinNotExist, ahk_class EVERYTHING_TASKBAR_NOTIFICATION ; 未启动。
 * {
 *     Run, %EverythingExe%,, Max
 *     WinWait, ahk_class EVERYTHING_TASKBAR_NOTIFICATION,, 2
 *     if (ErrorLevel = 1)
 *     {
 *         MsgBox, 4112, 错误, Everything启动失败。
 *         Return
 *     }
 * }
 * IfWinNotExist, ahk_class EVERYTHING ; 已启动但不存在窗口，说明在后台。
 * {
 *     PostMessage, 0x312, 0, 0x700000,, ahk_class EVERYTHING_TASKBAR_NOTIFICATION
 *     WinWait, ahk_class EVERYTHING,, 1
 *     ;MsgBox,,已启动但不存在窗口，说明在后台
 *     Send, !d  ;每次激活后定位光标到搜索框
 * }
 * IfWinNotActive, ahk_class EVERYTHING ; 窗口不活跃，激活。
 *     WinActivate
 *     ;MsgBox,,窗口不活跃，激活。
 *     Send, !s
 * Return
 */