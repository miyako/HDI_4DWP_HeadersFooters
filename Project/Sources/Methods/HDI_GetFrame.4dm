//%attributes = {}
C_POINTER:C301($ptr)
C_LONGINT:C283($frame)

rFrame0:=0
rFrame1:=0  //
rFrame2:=0  //
rFrame3:=0
rFrame4:=0
rFrame5:=0
rFrame6:=0
rFrame7:=0
rFrame8:=0
rFrame9:=0
rFrame10:=0

$frame:=WP Get frame:C1519(*; "WParea")
$ptr:=OBJECT Get pointer:C1124(Object named:K67:5; "rFrame"+String:C10($frame))
If (Not:C34(Is nil pointer:C315($ptr)))
	$ptr->:=1
End if 
