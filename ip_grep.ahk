;将粘贴板中的ip地址提取出来


str =
(
10.1.1.1
asdf 10.1.1.1 sdf
Process 10.3.3.3 ]
Process 10.3.3.4 ]
)

;需要匹配的表达式一定要用括号()围起来(regex_pattern)
;如果在正则表达式选项中含有大写的 O(例如 O)abc.*123), 则匹配对象会被存储到 OutputVa(这里是Pos)
Pos:=1 ;set starting point
loop, {
	Found_Pos:=RegExMatch(Clipboard,"O)(10(\.\d{1,3}){3})",obj,Pos) ;Store where found and set obj as content
	Pos:=Found_Pos+1 ;set next Position to start search
	if not obj ;if not found stop looping
		break ;didn't find so break loop
	IpList.=obj.1 "`n" ;add found values to IpList variable to display later
}
Clipboard = %IpList%