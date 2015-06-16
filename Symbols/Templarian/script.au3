#include <Constants.au3>

; AutoIt Version: 3.0

HotKeySet("{F3}", "symbol")

Func symbol()
   Local Const $sFilePath = @ScriptDir & "\custom.txt"
   Local $hFileOpen = FileOpen($sFilePath, $FO_READ)
   If $hFileOpen = -1 Then
	  MsgBox($MB_SYSTEMMODAL, "", "An error occurred when reading the file.")
	  Return False
   EndIf
   Local $sFileRead = FileRead($hFileOpen)
   Local $a = StringSplit($sFileRead, ",")
   FileClose($hFileOpen)
   For $i = 1 To $a[0]
	  Send("{F2}")
	  sleep(1000)
	  ClipPut($a[$i])
	  Send("^v")
	  sleep(1000)
	  Send("{ENTER}")
	  sleep(1000)
   Next
   MsgBox($MB_SYSTEMMODAL, "Symbol Creation", "Finished!")
EndFunc

$loop = 0
While 1;loop forever
  sleep(100)
  $loop += 1
  If $loop > 600 Then ExitLoop
	  ; Forgot what you were going to do in 60 seconds??? (or exit)
WEnd