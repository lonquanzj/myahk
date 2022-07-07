;https://gist.github.com/Danik/5808330
SetCapsLockState,AlwaysOff

CapsLock & v::
	clipboard = %Clipboard% ;add this code, trans to raw txt
	SendInput, +{Insert}
	return
	
CapsLock & c::
	SendInput, {home}+{end}^{insert}{end}
	ClipWait, 0.1
	return
	
CapsLock & !::
	GetKeyState, state, v
	if state = D
		SendInput %clipboard%
	return