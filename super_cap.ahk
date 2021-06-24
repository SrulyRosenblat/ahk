#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance FORCE 
SetCapsLockState, AlwaysOff
oldClipboard := ""
ClipSaved := ""
CapsLock::
    SetCapsLockState, AlwaysOff
return
CapsLock & 1::
    If (GetKeyState("CapsLock","T")){
        SetCapsLockState, AlwaysOff
    }
    Else{
        SetCapsLockState, AlwaysOn
    }
    Return
CapsLock & s::
    ClipboardGet()

    Run, http://www.google.com/search?&q=%clipboard%&btnI=I'm+Feeling+Lucky
    ClipboardRestore()
    Return
    
CapsLock & d::
    CurserGet()
    Run, http://www.google.com/search?q=define+%clipboard%     ; Launch with contents of clipboard
    ClipboardRestore()
Return

CapsLock & e::
    ParagraphGet()
    Run, http://www.google.com/search?&q=site:stackoverflow.com+%clipboard%
    ClipboardRestore()
    Return

CapsLock & q::
    ClipboardGet()
    Run, http://www.google.com/search?&q=site:stackoverflow.com+%clipboard%
    ClipboardRestore()
    Return

CurserGet(){
    global ClipSaved
    ClipSaved := ClipboardAll                    ;Save existing clipboard.
    Clipboard:= ""
    Send, {LButton 2}^c                                   ;Copy selected test to clipboard
    ClipWait 0
    If ErrorLevel
        {
            MsgBox, No Text Selected!
            Return
        }
}
ParagraphGet(){
    global ClipSaved
    ClipSaved := ClipboardAll                    ;Save existing clipboard.
    Clipboard:= ""
    Send, {LButton 3}^c                                   ;Copy selected test to clipboard
    ClipWait 0
    If ErrorLevel
        {
            MsgBox, No Text Selected!
            Return
        }
}
ClipboardGet()
{
    global ClipSaved
    ClipSaved := ClipboardAll                         ;Save existing clipboard.
    Clipboard:= ""
    Send, ^c                                            ;Copy selected test to clipboard
    ClipWait 0
    If ErrorLevel
        {
        MsgBox, No Text Selected!
        Return FalseSsSs
        }
}

ClipboardRestore()
{
    global ClipSaved
    Clipboard := ClipSaved
}