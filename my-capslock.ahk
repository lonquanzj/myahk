;https://gist.github.com/Danik/5808330
;禁用大小写切换键
SetCapsLockState,AlwaysOff

; 在Linux终端快捷粘贴，使用频率：极高	
CapsLock & v::
	clipboard = %Clipboard% ;add this code, trans to raw txt
	SendInput, +{Insert}
return

; 在文本编辑器中复制一整行，使用频率：高
CapsLock & c::
	SendInput, {home}+{end}^{insert}{end}
	ClipWait, 0.1
return

; 远程窗口（web端服务器/粘贴板禁用场景下）中粘贴本地粘贴板中的数据，使用频率：一般
;CapsLock & p::
;	SendInput %clipboard%
;return


CapsLock & w::
	SendInput, {2} 
return


; 键盘宏 粘贴->tab 循环
CapsLock & p::
	Loop, 20
	{
		SendInput, +{insert}{tab}
		ClipWait, 1
		Sleep, 100
	}
return