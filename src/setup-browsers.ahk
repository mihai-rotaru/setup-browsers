;; Download and install browsers

;; check that script is run as administrator
if not A_IsAdmin
{
   MsgBox This script will install software on your computer, and needs to be run as administrator. You can right-click it, and select "Run as Adminstrator".
   ExitApp
}

;; Safari 5.1.7
;; ------------

;; download
IfNotExist, safari-5.1.7.exe
    UrlDownloadToFile, http://appldnld.apple.com/Safari5/041-5487.20120509.INU8B/SafariSetup.exe, safari-5.1.7.exe

;; run installer
Run, safari-5.1.7.exe
WinWait, Safari
WinActivate, Safari

;; press next
ControlFocus, &Next >, Safari
SendInput {Space}

;; accept terms
SendInput {Tab}{Down}{Enter}

;; uncheck certain install options
WinWaitActive, Safari, Installation Options
Sleep, 300
SetControlDelay, 500
ControlFocus, Make Safari the default browser
SendInput {Space}
ControlFocus, Install Bonjour
SendInput {Space}
ControlFocus, Automatically update
SendInput {Space}

;; press next
ControlFocus, &Next >, Safari
SendInput {Space}

;; leave install location as default

;; press "Install"
ControlFocus, &Install, Safari
SendInput {Space}

;; uncheck "Open Safari"
WinWaitActive, Safari, Congratulations
ControlFocus, Open Safari after, Safari
SendInput {Space}

;; press Finish
ControlFocus, &Finish, Safari
SendInput {Space}
