:*:/btw::by the way
:*:-rq1::  ; 此热字串通过后面的命令把 "rq" 替换成当前日期和时间.  M/d/yyyy h:mm tt  ; 看起来会像 9/1/2005 3:53 PM 这样
FormatTime, CurrentDateTime,, yyyyMMdd ; 看起来会像 20190410 这样
SendInput %CurrentDateTime%
return

:*:-sj1:: 
FormatTime, CurrentDateTime,, yyyy-MM-dd hh:mm:ss ; 看起来会像 2019-04-10 20:35:22  
SendInput %CurrentDateTime%
return

:*:gerp::grep
:*:grpe::grep