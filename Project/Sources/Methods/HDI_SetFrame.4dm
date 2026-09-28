//%attributes = {"invisible":true}
var $ptr : Pointer
var $frameSet; $frameGet : Integer

Case of 
	: (rFrame0=1)
		$frameSet:=wk body:K81:206
	: (rFrame9=1)
		$frameSet:=wk current section default header:K81:216
	: (rFrame10=1)
		$frameSet:=wk current section default footer:K81:217
	: (rFrame3=1)
		$frameSet:=wk current section first header:K81:209
	: (rFrame4=1)
		$frameSet:=wk current section first footer:K81:210
	: (rFrame5=1)
		$frameSet:=wk current section left header:K81:211
	: (rFrame6=1)
		$frameSet:=wk current section left footer:K81:212
	: (rFrame7=1)
		$frameSet:=wk current section right header:K81:213
	: (rFrame8=1)
		$frameSet:=wk current section right footer:K81:214
End case 

WP SET FRAME:C1518(*; "WParea"; $frameSet)
$frameGet:=WP Get frame:C1519(*; "WParea")

If ($frameSet#$frameGet)
	OBJECT SET VISIBLE:C603(*; "FrameAlert@"; True:C214)
	SET TIMER:C645(2*60)
End if 

HDI_GetFrame
