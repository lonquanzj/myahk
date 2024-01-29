:*:/btw::by the way
::btw::by the way
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
:*:uspc::90001
:*:depc::10117
:*:espc::50481
:*:ukpc::BR69EL
:*:frpc::75019
:*:itpc::63075

:*:text1::
(
括号(顶部和底部) 之间的任何文本都按原义处理, 包括逗号和百分号.
默认情况下, 前一行与此行之间的硬回车(Enter) 也会保留.
    默认情况下, 保留此行左侧的缩进(制表符).
)