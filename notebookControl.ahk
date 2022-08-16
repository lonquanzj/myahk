;空格代替鼠标滚轮翻页
#IfWinActive ahk_exe C:\Program Files\BookxSoftware\BookxNote Pro\BookxNotePro.exe
^Space::
XButton1::
Send {WheelDown}
Return

+Space::
XButton2::
Send {WheelUp}
Return
#IfWinActive