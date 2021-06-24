#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance FORCE

^!j::
    Run, "https://us.bbcollab.com/collab/ui/session/join/93c6a2ba951643a083562180523d2bfa"
    ; dow := A_DDD
    ; Minute := A_Min
    ; Hour := A_Hour

    ; MondayAt9 :=  "https://bbhosted.cuny.edu/webapps/collab-ultra/tool/collabultra?course_id=_1972463_1&mode=view"
    ; MondayAt1 := "https://us02web.zoom.us/j/9029481020"

    ; TuesdayAt9 := "https://us.bbcollab.com/guest/963a567cc8a14e3cae4af0882bad33e8"
    ; TuesdayAt11 := "https://us02web.zoom.us/j/5158932712?pwd=MW9sUmpoUzBWc2Z6bXpHQytwSkNKdz09"
    ; TuesdayAt1 := "https://us.bbcollab.com/collab/ui/session/guest/fcbb0721158446c9aac3eedc6dec68eb"

    ; WedndsdayAt9 := "https://bbhosted.cuny.edu/webapps/collab-ultra/tool/collabultra?course_id=_1972463_1&mode=view"
    ; WedndsdayAt1 := "https://us02web.zoom.us/j/9029481020"


    ; if(dow = "mon"){
    ;     if(Hour >= 13){
    ;         if(Minute >= 0){
    ;             Run, %MondayAt1%
    ;         }
    ;     }
    ;     else if(Hour >= 13 - 1){
    ;         if(Minute >= 0 + 55){
    ;             Run, %MondayAt1%
    ;         }
    ;     }
    ;     else if(Hour == 9){
    ;         if(Minute >= 15 - 5){
    ;             Run, %MondayAt9%
    ;         }
    ;     }
    ;     else if(Hour > 9){
    ;         Run, %MondayAt9%
    ;     }
    ;     else{
    ;         MsgBox, % "no class too early"
    ;     }
        
    ; }
    ; else if(dow = "tue"){
    ;     if(Hour >= 13){
    ;         if(Minute >= 0){
    ;             Run, %TuesdayAt1%
    ;         }
    ;     }
    ;     else if(Hour >= 13 -1){
    ;         if(Minute >= 0 + 55){
    ;             Run, %TuesdayAt1%
    ;         }
    ;     }
        
    ;     else if(Hour >= 11){
    ;         if(Minute >= 45 - 5){
    ;             Run, %TuesdayAt11%
                
    ;         }
    ;     }
    ;     else if(Hour >= 9){
    ;         if(Minute >= 15 - 5){
    ;             Run, %TuesdayAt9%
    ;         }
    ;     }
    ;     else{
    ;         MsgBox, % "no class too early"
    ;     }
    ; }
    ; else if(dow = "wed"){
    ;     if(Hour >= 13){
    ;         if(Minute >= 0){
    ;             Run, %WedndsdayAt1%
    ;         }
    ;     }
    ;     else if(Hour >= 13 -1){
    ;         if(Minute >= 0 + 55){
    ;             Run, %WedndsdayAt1%
    ;         }
    ;     }
    ;     else if(Hour >= 9){
    ;         if(Minute >= 15 - 5){
    ;             Run, %WedndsdayAt9%
    ;         }
    ;     }
    ;     else{
    ;         MsgBox, % "no class too early"
    ;     }
    ; }
    ; else {
    ;     MsgBox, % "no class enjoy your day"
    ; }