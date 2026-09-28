var $page : Integer

GOTO SELECTED RECORD:C245([SAMPLES:1]; _Titles)

$page:=FORM Get current page:C276
Case of 
	: ($page=3)
		HDI_GetHeader
		HDI_GetBody
		HDI_GetFooter
		
	: ($page=4)
		HDI_GetFrame
		
End case 
