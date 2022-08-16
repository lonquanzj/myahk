#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetCapsLockState, AlwaysOff

;P: 获取物理状态( 即用户是否实际按住了按键).如果键是按下的(或打开了), 函数返回 1, 如果是松开的, 则返回 0. 
CapsLock & alt::
    Loop 1
    {   
        if GetKeyState("s", "P")
        {
            MsgBox, ok
            Break
        }
        sleep 1000       
    }
Return

::hcw::
MsgBox hcw
Return

;优化版，原理：先触发的放到GetKeyState里面，后面触发放到CapsLock后面；
CapsLock & i::
    if GetKeyState("Shift", "P")
        MsgBox, ok
Return

CapsLock & s::
    if GetKeyState("a", "P")
        MsgBox, ok
Return

CapsLock & v::
    if GetKeyState("alt", "P")
        MsgBox, ok
Return

CapsLock & c::
    SendInput, {home}+{end}^{insert}{end}
    MsgBox, ok
Return