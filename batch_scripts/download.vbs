set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run("""C:\Program Files (x86)\Crystal Instruments\EDM\EDM.Host.exe""")
WScript.Sleep 3000
WshShell.SendKeys "{tab}"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "{ENTER}"
WScript.Sleep 3000