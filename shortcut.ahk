SetCapsLockState, AlwaysOff 
!c::Send,^c
!v::Send,^v
!x::Send,^x
!f::Send,^f
!a::Send,^a
!z::Send,^z
!r::Send,^r
!t::Send,^t
!q::Send,!F4
!w::Send,^w
!s::Send,^s
!1::Send,^1
!2::Send,^2

CapsLock & q:: Send, ^q
CapsLock & h:: Send, {Del}
CapsLock & d:: Send, {BS}
CapsLock & k:: Send,{END} Send {BS}


;=====================================================================o
;                       CapsLock Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                    CapsLock + ` | {CapsLock}                       ;|
;---------------------------------o-----------------------------------o
CapsLock & `::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|    
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|    
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return                                                               ;|
;---------------------------------------------------------------------o
CapsLock::Send, {ESC}
;                    CapsLock Direction Navigator                    ;|
;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + a |  Home                          ;|
;                      CapsLock + e |  End                           ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & a::
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, {Home}                                                 ;|    
    else                                                             ;|        
        Send, +{Home}                                                ;|    
    return                                                           ;|
}   
else {                                                               ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, ^{Home}                                                 ;|    
    else                                                             ;|        
        Send, +^{Home}                                                ;|    
    return                                                           ;|
}                                                                    ;|
return
;-----------------------------------o                                ;|
CapsLock & e::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, {End}                                                  ;|    
    else                                                             ;|        
        Send, +{End}                                                 ;|    
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, ^{End}                                                 ;|    
    else                                                             ;|        
        Send, +^{End}                                                ;|    
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + b |  Left                          ;|
;                      CapsLock + n |  Down                          ;|
;                      CapsLock + p |  Up                            ;|
;                      CapsLock + f |  Right                         ;|
;                      Ctrl, Alt Compatible                          ;|;-----------------------------------o---------------------------------o
CapsLock & b::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, {Left}                                                 ;|    
    else                                                             ;|        
        Send, +{Left}                                                ;|    
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, ^{Left}                                                ;|    
    else                                                             ;|        
        Send, +^{Left}                                               ;|    
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & n::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, {Down}                                                 ;|    
    else                                                             ;|        
        Send, +{Down}                                                ;|    
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, ^{Down}                                                ;|    
    else                                                             ;|        
        Send, +^{Down}                                               ;|    
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & p::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, {Up}                                                   ;|    
    else                                                             ;|        
        Send, +{Up}                                                  ;|    
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, ^{Up}                                                  ;|    
    else                                                             ;|        
        Send, +^{Up}                                                 ;|    
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & f::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, {Right}                                                ;|    
    else                                                             ;|        
        Send, +{Right}                                               ;|    
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|    
    if GetKeyState("alt") = 0                                        ;|        
        Send, ^{Right}                                               ;|    
    else                                                             ;|        
        Send, +^{Right}                                              ;|    
    return                                                           ;|
}                                                                    ;
return                                                               ;|
;---------------------------------------------------------------------o
;paste in command windows
#IfWinActive ahk_class ConsoleWindowClass
^v::
send %Clipboard%
return
