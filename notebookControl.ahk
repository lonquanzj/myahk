;空格代替鼠标滚轮翻页
#IfWinActive ahk_exe C:\Program Files\BookxSoftware\BookxNote Pro\BookxNotePro.exe
Space::Send {WheelDown}
^Space::Send {WheelUp}
#IfWinActive