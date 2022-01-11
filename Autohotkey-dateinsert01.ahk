#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Hotstring EndChars `t

#Persistent
#include C:\Program Files\AutoHotkey\Lib\alt-ime-ahk-master\IME.ahk

;日付の自動挿入、IME ONの場合は、F10押すようにした。======2021.4.30================
Insert::
NumpadIns::
FormatTime,TimeString,,yyyy/MM/dd
Send,%TimeString%
;ans := IME_GET()
;IF (%ans% <> 0) {
;    Send, {F10}
;}
;MsgBox,%ans%
Return

+Insert::
+NumpadIns::
FormatTime,TimeString,,yyyyMMdd
Send,%TimeString%
Return

::kyou::
    FormatTime,TimeString,,yyyy/MM/dd
    Send,%TimeString%

IF (%ans% <> 0) {
    Send,{F10}
}
return




