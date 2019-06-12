: repeat
  dict_head
; IMMEDIATE

: until
  ' branch0 , ,
; IMMEDIATE


: 2dup >r dup r> swap >r dup r> swap ;

: for
  ' swap , ' >r , ' >r ,
  dict_head ' r> , ' r> ,
  ' 2dup , ' >r , ' >r , ' < ,
  ' branch0 ,
  dict_head 0 , swap
; IMMEDIATE

: endfor
  ' r> , ' lit , 1 , ' + , ' >r ,
  ' branch , , dict_head swap ! ' r> ,
  ' drop , ' r> , ' drop ,
; IMMEDIATE

