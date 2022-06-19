wScript.Sleep Rnd*120000+300000
set oShell = CreateObject("wScript.Shell") 
oShell.run"%SystemRoot%\System32\SndVol.exe "
wScript.Sleep 1000
oShell.SendKeys("{PGUP}")
oShell.SendKeys("{PGUP}")
oShell.SendKeys("{PGUP}")
oShell.SendKeys("{PGUP}")
oShell.SendKeys("{PGUP}")
oShell.SendKeys"%{F4}"
Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")
oPlayer.URL = "C:\Windows\Media\Alarm11.wav"
oPlayer.controls.play 
While oPlayer.playState <> 1
  wScript.Sleep 100
Wend
oPlayer.close
