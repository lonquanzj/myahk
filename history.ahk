/* #+s::    ; ��/��С��/���� Everything
 * EverythingExe := "C:\Users\lonqu\AppData\Local\TotalCMD64\Tools\Everything.exe"
 * IfWinActive, ahk_class EVERYTHING ; ���ڵ�ǰ��Ծ���رգ����ص���̨�ˣ���
 * {
 *     WinMinimize
 *     ;MsgBox,,���ڵ�ǰ��Ծ������
 *     Return
 * }
 * DetectHiddenWindows, On
 * IfWinNotExist, ahk_class EVERYTHING_TASKBAR_NOTIFICATION ; δ������
 * {
 *     Run, %EverythingExe%,, Max
 *     WinWait, ahk_class EVERYTHING_TASKBAR_NOTIFICATION,, 2
 *     if (ErrorLevel = 1)
 *     {
 *         MsgBox, 4112, ����, Everything����ʧ�ܡ�
 *         Return
 *     }
 * }
 * IfWinNotExist, ahk_class EVERYTHING ; �������������ڴ��ڣ�˵���ں�̨��
 * {
 *     PostMessage, 0x312, 0, 0x700000,, ahk_class EVERYTHING_TASKBAR_NOTIFICATION
 *     WinWait, ahk_class EVERYTHING,, 1
 *     ;MsgBox,,�������������ڴ��ڣ�˵���ں�̨
 *     Send, !d  ;ÿ�μ����λ��굽������
 * }
 * IfWinNotActive, ahk_class EVERYTHING ; ���ڲ���Ծ�����
 *     WinActivate
 *     ;MsgBox,,���ڲ���Ծ�����
 *     Send, !s
 * Return
 */