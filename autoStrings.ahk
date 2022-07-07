:*:/btw::by the way
:*:-rq1::  
FormatTime, CurrentDateTime,, yyyyMMdd  ;日期
SendInput %CurrentDateTime%
return

:*:-sj1:: 
FormatTime, CurrentDateTime,, yyyy-MM-dd hh:mm:ss ;时间
SendInput %CurrentDateTime%
return

:*:gerp::grep
:*:grpe::grep