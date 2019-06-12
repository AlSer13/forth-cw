: if
    ' branch0 , dict_head 0 ,
; IMMEDIATE

: then
    dict_head swap !
; IMMEDIATE

: else
    ' branch , dict_head 0 , swap dict_head swap
; IMMEDIATE
