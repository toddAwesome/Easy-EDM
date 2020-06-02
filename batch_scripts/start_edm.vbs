set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run("""C:\Program Files (x86)\Crystal Instruments\EDM\EDM.Host.exe""")
WScript.Sleep 5000
WshShell.SendKeys "{tab}"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "{ENTER}"
WScript.Sleep 2000