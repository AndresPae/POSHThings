Add-Type -AssemblyName System.speech
$talker = New-Object System.Speech.Synthesis.SpeechSynthesizer
$talker.SelectVoice('Microsoft Zira Desktop')
$talker.speakAsync("Attention IT team!")
$talker.speakAsync("Exchange is down!")

# $talker | Get-Member - gives methods
#just add demo