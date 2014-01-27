;; Download and install browsers

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
